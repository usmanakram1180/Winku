class HomesController < ApplicationController
    def new
        @home = Home.new
    end
      
    def index
      @home = Home.new
      @homes = Home.includes(:comments).order(created_at: :desc).all
      puts "@homes: #{@homes.inspect}"
    end
    def show
      @home = Home.find(params[:id])
    end
    def create
      @home = Home.new(home_params)
      if @home.save
        redirect_to root_path, notice: 'Post was successfully created.'
      else
         render :new
      end
    end
    
      private
      def home_params
        params.require(:home).permit(:content, :music, :video, :photo, image: [], images: [])
      end
    
end