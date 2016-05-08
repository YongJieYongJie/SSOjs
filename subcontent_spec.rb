require_relative 'subcontent.rb'

describe Subcontent do
  it 'parses Part' do
    page_doc = File.open('unfair_contract_terms_act.html') { |f| Nokogiri::HTML(f) }
    main_content = page_doc.at_xpath('//div[@class="body"]')
    
    subcontent = Subcontent.new(main_content.children.first)
    puts subcontent.inspect
  end
end
