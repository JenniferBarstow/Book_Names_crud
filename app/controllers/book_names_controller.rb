class BookNamesController < ApplicationController

  def index
    @book_names = BookName.all
  end

  def new
    @book_name = BookName.new
  end

  def create
    @book_name = BookName.new(book_name_params)
    if @book_name.save
      redirect_to book_names_path
    else
      @book_name = BookName.new(book_name_params)
      render :new
    end
  end

  def show
    @book_name = BookName.find(params[:id])
  end







  private

  def book_name_params
    params.require(:book_name).permit(:title, :author, :content)
  end
end
