class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_appointment, only: %i[ show edit update destroy ]

  # GET /appointments or /appointments.json
  def index
    @appointments = Appointment.all
    @appointments = @appointments.order("appointment_date ASC")
  end

  # GET /appointments/1 or /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)
    appointment = Appointment.find(@appointment.worker_id)

    # LOGICA PARA QUE NO SE PUEDA SELECCIONAR UN TRABAJADOR QUE ESTA DE GUARDIA

    for a in Appointment.all
      if appointment.appointment_date.to_date == g.guard_date.to_date
        if appointment.worker_id == g.worker_id
          redirect_to new_appointment_path
        end
      else
        respond_to do |format|
          if @appointment.save
            format.html { redirect_to @appointment, notice: "Appointment was successfully created." }
            format.json { render :show, status: :created, location: @appointment }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @appointment.errors, status: :unprocessable_entity }
          end
        end
      end
    end






  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:appointment_date, :worker_id, :medical_center_id)
    end
  end
end
