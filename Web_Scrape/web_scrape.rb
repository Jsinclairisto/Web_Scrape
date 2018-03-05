require 'open-uri'
require 'nokogiri'

url = "http://boards.4chan.org/f/"

document = open(url)
content = document.read
parsed_content = Nokogiri::HTML(content)

parsed_content.css('.board').css('.highlightPost').each do |highlightPost|
	title		 = highlightPost.css('.file-col').inner_text
	user_name 	 = highlightPost.css('.name-col').inner_text
	width 		 = highlightPost.css('.data-width').inner_text
	height 		 = highlightPost.css('.data-height').inner_text
	subject		 = highlightPost.css('.subject').inner_text
	
	
	puts title
	puts user_name
	puts width
	puts height
	puts subject
	puts '------------------------------------------'



end
