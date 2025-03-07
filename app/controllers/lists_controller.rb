class ListsController < ApplicationController
  include HTTParty

  def index
    @lists = List.all  # Fetch all lists from the database
  end


  def show
    @list = List.find(params[:id])  # Find the list
    @bookmark = Bookmark.new        # Initialize a new bookmark
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
  @list = List.find(params[:id])  # Fetch the list using the id from the URL
end


  def list_params
    params.require(:list).permit(:name)
  end
end
