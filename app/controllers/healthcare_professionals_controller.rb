class HealthcareProfessionalsController < ApplicationController
  before_action :set_healthcare_professional, only: [:show, :edit, :update, :destroy]

  def index
    @healthcare_professionals = HealthcareProfessional.all
  end

  def show
  end

  def new
    @healthcare_professional = HealthcareProfessional.new
  end

  def edit
  end

  def create
    @healthcare_professional = HealthcareProfessional.new(healthcare_professional_params)
    if @healthcare_professional.save
      redirect_to @healthcare_professional, notice: 'Healthcare professional created.'
    else
      render :new
    end
  end

  def update
    if @healthcare_professional.update(healthcare_professional_params)
      redirect_to @healthcare_professional, notice: 'Healthcare professional updated.'
    else
      render :edit
    end
  end

  def destroy
    @healthcare_professional.destroy
    redirect_to healthcare_professionals_url, notice: 'Healthcare professional destroyed.'
  end

  private

    def set_healthcare_professional
      @healthcare_professional = HealthcareProfessional.find(params[:id])
    end

    def healthcare_professional_params
      params.require(:healthcare_professional).permit(:firstname, :lastname, :address, :speciality)
    end
end
