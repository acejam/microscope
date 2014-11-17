require 'har'

har = HAR::Archive.from_file('test.har')
# har.pages.first.entries.each do |entry|
# 	puts "#{entry.request.url} #{entry.time}ms"
# end

puts har