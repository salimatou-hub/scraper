require 'rubygems'
require 'Nokogiri'
require 'open-uri'
 
def page
page = Nokogiri::HTML(open('https://coinmarketcap.com/'))
puts name

end


def name_price
page = page.xpath('//th[@class=""]/a[@id="email"]')
page.css("name").each do |price|
name = page.xpath("//*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/thead/tr/th[2]/font/font").to_s
price = dv.at_css('name').text
  puts name,"  <----->  ", price,"\n"
end


