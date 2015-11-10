class DocumentFormatter
  def initialize(document)
    @document = document
  end

  def replace!(replacement_tag, value)
    @document.content.gsub!("%{#{replacement_tag}}", value)
  end

  def method_missing(method_name, *args)
    puts "Method: #{method_name} not found!"

    dynamic_method_name = method_name.to_s.sub('replace_', '')
    tag = method_name.to_s.sub('replace_', '').gsub('_', '').upcase
    replace!(tag, args.first)

    self.class.class_eval do
      define_method "#{dynamic_method_name}=" do |value|
        self.instance_variable_set("@#{dynamic_method_name}", value)
      end

      define_method dynamic_method_name do
        self.instance_variable_get("@#{dynamic_method_name}")
      end
    end

    self.send("#{dynamic_method_name}=", args.first)
  end
end
