class PatientsController < ApplicationController
  def index
      @patients = Patient.all
    end

  def show
    @patient = Patient.find(params[:id])
    @medication = Medication.find_by name: 'Alex Sweeten'
    #  @medication = Medication.find(params[:id]) # show * where Medication.Name = Patient.Name Post.find_by name: 'Spartacus', rating: 4
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
