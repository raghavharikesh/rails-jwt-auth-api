class CommentsController < ApplicationController
	 before_action :set_comment  ,only: [:edit,:update,:show,:destroy]

	def create
    @teacher = Teacher.find(params[:teacher_id])
    @comment = @teacher.comments.create(comment_params)
    redirect_to teacher_path(@teacher)
    end
  
   def show 	
   end

   def destroy
    @comment.destroy!
    redirect_to teacher_path, notice: "Comment has been delete succesfully"
   end

  def edit
  end

  def update
  	if @comment.update(comment_params)
  		redirect_to teacher_path(@teacher), notice: "Comment has been update succesfully"
  	else
  		render :edit
  	end
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

    def set_comment
      @teacher = Teacher.find(params[:teacher_id])
  	  @comment=@teacher.comments.find(params[:id])
    end
end

  	

