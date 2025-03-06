class BookmarksController < ApplicationController
  before_action :set_list, only: [:create, :destroy]

  def create
    @bookmark = @list.bookmarks.new(bookmark_params)

    # Ensure the movie is properly associated before saving the bookmark
    if @bookmark.movie.nil?
      flash[:alert] = "Movie must be selected!"
      render 'lists/show' and return
    end

    if @bookmark.save
      redirect_to @list, notice: 'Bookmark was successfully added.'
    else
      render 'lists/show'
    end
  end

  def destroy
    @bookmark = @list.bookmarks.find(params[:id])  # Ensure we are using @list.bookmarks.find
    @bookmark.destroy
    redirect_to @list, notice: 'Bookmark was successfully removed.'
  end

  private

  def set_list
    @list = List.find(params[:list_id])  # Make sure to fetch the list properly
  end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)  # Ensure we are permitting the right parameters
  end
end
