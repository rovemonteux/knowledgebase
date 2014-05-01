require 'open-uri'

class KnowledgebaseController < ApplicationController
  def index
	@paragraphs = Nokogiri::HTML.parse(open("http://www.noviny.cz/")).css('p')
  end
end
