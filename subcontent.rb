require 'nokogiri'

class Subcontent
  attr_accessor :test_output

  def initialize(node)
    if is_subcontent?(node)
      subcontent = parse_subcontent()
    elsif !node.children.empty?

    end
  end

  def is_subcontent?(node)
    is_part?(node)
  end

  def is_part?(node)
    node.at_xpath('../div[@class="part"]')
  end
end
