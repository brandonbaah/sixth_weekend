class ThesaurusController < ApplicationController
  def index
    @thesaurus = Thesauru.all
    render 'index.html.erb'
  end

  def create
    @thesaurus = Thesauru.create(
      
    )
  end

end
