class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(student_params)
    @school_class.save
    redirect_to student_path(@school_class)
  end

  def update
		@school_class = SchoolClass.find(params[:id])
	  @school_class.update(school_class_params)
	  redirect_to student_path(@school_class)
	end

	def edit
	  @school_class = SchoolClass.find(params[:id])
	end
  private

  def school_class_params
    params.require(:school_class).permit(:room_number, :title)
  end

end
