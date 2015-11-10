require_relative 'document.rb'

def email_copy
  <<-END
Hello %{FIRSTNAME},

Thank you for signing up to receive %{NEWSLETTER}. For more information please visit %{URL}.

Login with: %{EMAIL}

Regards,
%{COMPANY}
  END
end

def replacement(document)
  formatter = DocumentFormatter.new(document)
  formatter.replace!('FIRSTNAME', 'Jesse')
  formatter.replace!('NEWSLETTER', 'Rubots Weekly')
  formatter.replace!('URL', 'https://github.com/mrjman/rubots')
  formatter.replace!('EMAIL', 'jesse@mondorobot.com')
  formatter.replace!('COMPANY', 'The Rubots Team')
end

def replacement_with_method_missing(document_2)
  formatter = DocumentFormatter.new(document_2)
  formatter.replace_first_name('Billy Bob')
  formatter.replace_newsletter('Rubots Weekly')
  formatter.replace_url('https://github.com/mrjman/rubots')
  formatter.replace_email('jesse@mondorobot.com')
  formatter.replace_company('The Rubots Team')
end
