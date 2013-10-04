class EnrolmentsController < ApplicationController
  before_filter :set_enrolment, only: [:show, :edit, :update, :destroy]

  # GET /enrolments
  # GET /enrolments.json
  def index
    @enrolments = Enrolment.all
  end

  # GET /enrolments/1
  # GET /enrolments/1.json
  def show
  end

  # GET /enrolments/new
  def new
    @enrolment = Enrolment.new
    @intakes = Intake.scheduled
  end

  # GET /enrolments/1/edit
  def edit
  end

  # POST /enrolments
  # POST /enrolments.json
  def create
    @enrolment = Enrolment.new(params[:enrolment])

    respond_to do |format|
      if @enrolment.save
        logger.info {"Starting email first"}
        EnrolmentMailer.enrolment_received(@enrolment).deliver
        logger.info {"Starting email second"}
        EnrolmentMailer.enrolment_response(@enrolment).deliver
        format.html { redirect_to thanks_path, notice: 'Your enrolment has been received.' }
        format.json { render action: 'show', status: :created, location: @enrolment }
      else
        format.html { render action: 'new' }
        format.json { render json: @enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enrolments/1
  # PATCH/PUT /enrolments/1.json
  def update
    respond_to do |format|
      if @enrolment.update(params[:enrolment])
        format.html { redirect_to @enrolment, notice: 'Enrolment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolments/1
  # DELETE /enrolments/1.json
  def destroy
    @enrolment.destroy
    respond_to do |format|
      format.html { redirect_to enrolments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolment
      @enrolment = Enrolment.find(params[:id])
    end

    
end
