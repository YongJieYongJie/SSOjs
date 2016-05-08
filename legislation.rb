require 'nokogiri'
require_relative 'subcontent.rb'

class Legislation
  attr_accessor :title, :chapter_number, :subcontents

  def initialize(page_source)
    page_doc = Nokogiri::HTML(page_source)
    @title = parse_title(page_doc)
    @chapter_number = parse_chapter_number(page_doc)

    main_content = parse_main_content(page_doc)
    @subcontents = parse_subcontents(main_content)
  end

  def parse_title(page_doc)
    page_doc.at_xpath('//div[@id="aT-."]/text()').content
  end

  def parse_chapter_number(page_doc)
    chapter_info = page_doc.at_xpath('//div[@class="chapNo"]/text()').content
    chapter_number = /([0-9]+[A-Z]?)/.match(chapter_info)[1]
  end

  def parse_main_content(page_doc)
    page_doc.at_xpath('//div[@class="body"]')
  end

  def parse_subcontents(main_content)
    subcontents = Array.new
    main_content.children.each do |child|
      subcontent = Subcontent.new(child)
      subcontents << subcontent unless subcontent.nil?
    end
    subcontents
  end
end
