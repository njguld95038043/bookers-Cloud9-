class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
    puts "作成したキー #{ENV['SECRET_KEY']}"
  end

  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end
end
