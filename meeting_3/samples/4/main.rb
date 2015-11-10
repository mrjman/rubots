# Demonstration of:
# Method missing
# Dynamic methods

require_relative 'helpers.rb'
require_relative 'document.rb'
require_relative 'document_formatter.rb'

document = Document.new do |doc|
  doc.content = email_copy
end

puts 'Doing replacement'
replacement(document)
puts document.content

document_2 = Document.new do |doc|
  doc.content = email_copy
end

puts ''
puts 'Doing replacement with method missing'
replacement_with_method_missing(document_2)
puts ''
puts document_2.content
