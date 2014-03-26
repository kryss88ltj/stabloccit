class CommentsController < ApplicationController
  def create
    # @comment = Comment.new(topic_params)
    @comment = Comment.new
    authorize @comment
    if @comment.save
      redirect_to @post, notice: "Topic was saved successfully."
    else
      flash[:error] = "Error creating topic. Please try again."
      render :new
    end
  end
end
