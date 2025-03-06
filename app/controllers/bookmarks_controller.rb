class BookmarksController < ApplicationController
  before_action :set_list, only: [:create, :destroy]
  
  def create
    @list = List.find(params[:list_id])  # Make sure the list is found
    @bookmark = @list.bookmarks.new(bookmark_params)

    # Ensure the movie is properly associated before saving the bookmark
    if @bookmark.movie.nil?
      flash[:alert] = "Movie must be selected!"
      render 'lists/show' and return
    end

    # Save the bookmark and check for errors
    if @bookmark.save
      redirect_to @list, notice: 'Bookmark was successfully added.'
    else
      flash.now[:alert] = "Failed to add bookmark: " + @bookmark.errors.full_messages.to_sentence
      render 'lists/show'
    end
  end




  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    # If the request is a Turbo Stream request, respond with a Turbo Stream to remove the bookmark
    respond_to do |format|
      format.html { redirect_to @list, notice: 'Bookmark was successfully removed.' }
      format.turbo_stream { render turbo_stream: turbo_stream.remove(@bookmark) }
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])  # Make sure to fetch the list properly
  end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)  # Ensure we are permitting the right parameters
  end
end
