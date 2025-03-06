class BookmarksController < ApplicationController
  before_action :set_list, only: [:create, :destroy]

  def new
    @list = List.find(params[:list_id])  # Find the list from URL
    @bookmark = @list.bookmarks.new  # Build a new bookmark associated with the list
  end

  def create
    @bookmark = @list.bookmarks.new(bookmark_params)

    if @bookmark.save
      redirect_to @list, notice: 'Bookmark was successfully added.'
    else
      render 'lists/show'
    end
  end
  def destroy
    @bookmark.destroy
    redirect_to @list, notice: 'Bookmark was successfully removed.'
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
def set_bookmark
  @bookmark = @list.bookmarks.find(params[:id])
end
