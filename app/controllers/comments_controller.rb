class CommentsController < ApplicationController

    def create
      if user_signed_in?
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
      else
        redirect_to new_user_session_path
      end

    end
    
    private
        def comment_params

          params.require(:comment).permit(:body, :user_id )
        end
end
