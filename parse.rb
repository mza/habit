require 'rubygems'
require 'rexml/document'

file = ARGV[0]

puts "Habit: breaking down the usability wall"
puts ""
puts "Working with #{file}"

doc = REXML::Document.new(File.read(file))
doc.elements.each('ServiceUsage/OperationUsage/UsageValue') do |element|
  puts element.text
end

