class FavoritesController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    @favorite = current_user.favorites.new(book_id: book.id)
    @favorite.save
    @book = @favorite.book
    #render 'replace_btn'
  end

  def destroy
    book = Book.find(params[:book_id])
    @favorite = current_user.favorites.find_by(book_id: book.id)
    @book = @favorite.book
    @favorite.destroy
    #render 'replace_btn'
  end
end
