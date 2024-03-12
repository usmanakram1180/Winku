class CommentsController < ApplicationController
    def create
      @home = Home.find(params[:home_id])
      @comment = @home.comments.create(comment_params)
      redirect_to root_path
    end
  
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
  end
  