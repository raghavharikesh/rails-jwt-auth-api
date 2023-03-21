class TeachersController < ApplicationController
	  # before_action :set_teacher, only: [:edit,:update,:show,:destroy]

	def index
		@teachers=Teacher.all
	end
    
	def show
        @teacher = Teacher.find(params[:id])
	end
    
    def new
    	@teacher=Teacher.new	
    end

    def create
        
    	@teacher=Teacher.create(teacher_params)
    	if @teacher.save
    		redirect_to teachers_path, notice: "Teacher has been created succesfully"
    	else
    		render :new
    	end
    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update
        @teacher = Teacher.find(params[:id])
        if @teacher.update(teacher_params)
        	redirect_to teachers_path , notice: "Teacher has been update succesfully"
        else
        	render :edit 
        end
    end

    def destroy
        @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path, notice: "Teacher has been delete succesfully"
    end

    private
    def teacher_params
    	params.require(:teacher).permit(:name,:subject)
    end
    
    def set_teacher
      # @teacher = Teacher.find(params[:id])
    end

end
