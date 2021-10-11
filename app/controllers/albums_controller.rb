class AlbumsController < ApplicationController
    def index
        @albums = Album.all
    end
    def show
       @albums = Album.find(params[:id])
    end
    def new
        @album = Album.new
    end
    def create
        @album = Album.new(album_params)
        if @album.save
            redirect_to root_path
        else
            render :new
        end
    end
    def edit 
    @album = Album.find(params[:id])
    end
    def update
      @album = Album.find(params[:id])
      if @album.update(album_params)
        redirect_to root_path
      else
        render :edit
      end
    end
    def destroy
      @album =Album.find(params[:id])
      if @album.destroy
      redirect_to root_path
      end
    end
          
    private
    def album_params
        params.require(:album).permit(:Title,:Description)
    end
end
