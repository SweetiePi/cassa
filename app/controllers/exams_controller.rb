class ExamsController < ApplicationController
  def index
      @exams = Exam.all
    end

  def show
    @exam = Exam.find(params[:id])
  end

  def new
  end

  def create
    @exam = Exam.new(visitt_params)

    @exam.save
    redirect_to @exam
  end

  private
  def exam_params
    params.require(:exam).permit(:id_nim, :examtype, :examdate, :status, :comments)
  end
end
