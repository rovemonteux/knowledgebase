require 'open-uri'

class KnowledgebaseController < ApplicationController
  def index
	@paragraphs = Nokogiri::HTML.parse(open("http://www.lemonde.fr/")).css('p')
  end
end
