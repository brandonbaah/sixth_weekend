class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    render 'index.html.erb'
  end

  def show
    @entry = Entry.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render 'new.html.erb'
  end

  def create
    @entry = Entry.new(
      word: params[:word],
      antonym: params[:antonym],
      synonym: params[:synonym]
      )
      # if thesaurus.name == @entry.word
  end

  def destroy
    @entry = Entry.find_by(id: params[:id])
    @entry.destroy(
      word: params[:word],
      antonym: params[:antonym],
      synonym: params[:synonym]
      )
    redirect_to 'index.html.erb'
  end

  def search
  @entries = Entry.where("LOWER(word) LIKE ?", "%#{params[:search].downcase}%")
  render "index.html.erb"
  end
end
