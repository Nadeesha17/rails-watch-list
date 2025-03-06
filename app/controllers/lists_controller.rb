class ListsController < ApplicationController
  def index
    @lists = List.all  # Fetch all lists from the database
  end

  def show
    @bookmark = Bookmark.new   # This is to create a new bookmark form
    @bookmarks = @list.bookmarks   # This will fetch all bookmarks for the list
  end

  def new
    @list = List.new  # Initialize a new List object for the form
    @bookmark = Bookmark.new  # Initialize a new Bookmark object if necessary
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list  # Redirect to the list show page
    else
      render :new  # Re-render the form if validation fails
    end
end
def destroy
  @list.destroy
  redirect_to lists_url, notice: 'List was successfully destroyed.'
end

private

def set_list
  # Find the list by its ID
  @list = List.find_by(id: params[:id])
  # If the list doesn't exist, redirect or handle it accordingly
  if @list.nil?
    redirect_to lists_path, alert: "List not found."
  end
end


  def list_params
    params.require(:list).permit(:name)
  end
end
