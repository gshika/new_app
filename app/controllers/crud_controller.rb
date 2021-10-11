class CrudController < ApplicationController
  def index
    @albums = Album.all
  end

  def edit
    debugger
    @albums = Album.new
  end

  def create

    @albums = Album.new(album_params)
    debugger
    if @albums.save
      redirect_to @albums
    else
      render :new
    end
  end
  private
    def album_params
      params.require(:album).permit(:title, :description, :created_date)
    end
end
