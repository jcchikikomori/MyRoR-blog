class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end
	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy
	    respond_to do |format|
	      format.html { redirect_to article_path(@article), notice: 'Comment was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end
	private # WARN: functions will be private starting this line
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
