class DocumentFormatter
  def initialize(document)
    @document = document
  end

  def replace!(replacement_tag, value)
    @document.content.gsub!("%{#{replacement_tag}}", value)
  end

  def method_missing(method_name, *args)
    puts "Method: #{method_name} not found!"

    tag = method_name.to_s.sub('replace_', '').gsub('_', '').upcase
    replace!(tag, args.first)
  end
end
