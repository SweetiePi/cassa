class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def new
  end

  def create
    @patient = Patient.new(patient_params)

    @patient.save
    redirect_to @patient
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :phone, :address, :dateofbirth, :status, :medication, :emergencycontact)
  end
end
