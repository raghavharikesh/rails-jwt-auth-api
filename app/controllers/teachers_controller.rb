class TeachersController < ApplicationController
	   before_action :set_teacher  ,only: [:edit,:update,:show,:destroy]

	def index
		@teachers=Teacher.all
	end
    
	def show
        binding.pry
        @user = User.find(params[:user_id])
        @teacher = @user.teachers.find(:id)
	end
    
    def new
    	@teacher=Teacher.new	
    end

    def create
        @user = User.find(params[:user_id])
    	@teacher=@user.teachers.create(teacher_params)
    	if @teacher.save
    		redirect_to teacher_path(@teacher), notice: "Teacher has been created succesfully"
    	else
    		render :new
    	end
    end

    def edit
    end

    def update
        if @teacher.update(teacher_params)
        	redirect_to @teacher , notice: "Teacher has been update succesfully"
        else
        	render :edit 
        end
    end

    def destroy
    @teacher.destroy
    redirect_to teachers_path, notice: "Teacher has been delete succesfully"
    end

    private
    def teacher_params
    	params.require(:teacher).permit(:name,:subject)
    end
    
    def set_teacher
       @teacher = Teacher.find(params[:id])
    end

end
