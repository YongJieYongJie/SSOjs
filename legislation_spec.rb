require_relative 'legislation.rb'

describe Legislation do
  it 'extracts meta information relating to legislation' do
    page_source = String.new
    File.open('unfair_contract_terms_act.html', 'rb') { |f| page_source = f.read } # curl the page as necessary

    ucta = Legislation.new(page_source)
    expect(ucta.title).to eq('Unfair Contract Terms Act')
    expect(ucta.chapter_number).to eq('396')
  end
end
