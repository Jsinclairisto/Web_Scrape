require 'open-uri'
require 'nokogiri'

url = "http://boards.4chan.org/f/"

document = open(url)
content = document.read
doc = Nokogiri::HTML(content)

doc.css('.board').css('.highlightPost').each do |highlightPost|
	title		 = highlightPost.css('.file-col').inner_text
	user_name 	 = highlightPost.css('.name-col').inner_text
	subject		 = highlightPost.css('.subject').inner_text
    
	puts title
	puts user_name
    puts subject
    puts '------------------------------------------'


end
