class VisitsController < ApplicationController
  def index
      @visits = Visit.all
    end

  def show
    @visit = Visit.find(params[:id])
  end

  def new
  end

  def create
    @visit = Visit.new(visitt_params)

    @visit.save
    redirect_to @visit
  end

  private
  def visit_params
    params.require(:visit).permit(:id_num, :practitioner_name, :specialty, :dateofvisit, :comments)
  end
end
