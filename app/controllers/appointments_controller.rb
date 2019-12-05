class AppointmentsController < ApplicationController
  before_action :set_user
  before_action :set_appointment, only: [:show, :update, :edit, :destroy]

  def index
    @appointments = @user.appointments.all
  end

  def show
  end

  def edit
    render partial: 'form'
  end

  def new
    # doctors
    @doctors = Doctor.all
    @appointment = @user.appointments.new
    render partial: 'form'
  end

  def create
    @appointment = @user.appointments.new(appointment_params)
    if @appointment.save
      redirect_to[@user, @appointment]
    else
      render :new
    end
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to [@user, @appointment]
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to user_appointments_path(@user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :time, :date)
  end

  def set_appointment
    @appointment = @user.appointments.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end