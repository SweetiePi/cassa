class MedicationsController < ApplicationController
  def index
      @medications = Medication.all
    end

  def show
    @medication = Medication.find(params[:id])
  end

  def new
  end

  def create
    @medication = Medication.new(medication_params)

    @medication.save
    redirect_to @medication
  end

  private
  def medication_params
    params.require(:medication).permit(:name, :dosage, :duration, :startdate, :sideeffects, :purpose, :comments)
  end
end
