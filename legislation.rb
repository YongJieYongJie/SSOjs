require 'nokogiri'

class Legislation
  attr_accessor :title, :chapter_number

  def initialize(page_source)
    page_doc = Nokogiri::HTML(page_source)
    @title = parse_title(page_doc)
    @chapter_number = parse_chapter_number(page_doc)
  end

  def parse_title(page_doc)
    page_doc.at_xpath('//div[@id="aT-."]/text()').content
  end

  def parse_chapter_number(page_doc)
    chapter_info = page_doc.at_xpath('//div[@class="chapNo"]/text()').content
    chapter_number = /([0-9]+[A-Z]?)/.match(chapter_info)[1]
  end
end
