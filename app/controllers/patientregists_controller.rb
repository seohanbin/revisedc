class PatientregistsController < ApplicationController
  before_action :set_patientregist, only: [:show, :edit, :update, :destroy]

  # GET /patientregists
  # GET /patientregists.json
  def index
    @patientregists = Patientregist.all
  end

  # GET /patientregists/1
  # GET /patientregists/1.json
  def show
  end

  # GET /patientregists/new
  def new
    @patientregist = Patientregist.new
  end

  # GET /patientregists/1/edit
  def edit
  end

  # POST /patientregists
  # POST /patientregists.json
  def create
    @patientregist = Patientregist.new(patientregist_params)

    respond_to do |format|
      if @patientregist.save
        format.html { redirect_to @patientregist, notice: 'Patientregist was successfully created.' }
        format.json { render :show, status: :created, location: @patientregist }
      else
        format.html { render :new }
        format.json { render json: @patientregist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patientregists/1
  # PATCH/PUT /patientregists/1.json
  def update
    respond_to do |format|
      if @patientregist.update(patientregist_params)
        format.html { redirect_to @patientregist, notice: 'Patientregist was successfully updated.' }
        format.json { render :show, status: :ok, location: @patientregist }
      else
        format.html { render :edit }
        format.json { render json: @patientregist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patientregists/1
  # DELETE /patientregists/1.json
  def destroy
    @patientregist.destroy
    respond_to do |format|
      format.html { redirect_to patientregists_url, notice: 'Patientregist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patientregist
      @patientregist = Patientregist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patientregist_params
      params.require(:patientregist).permit(:chiefcomplaint, :pipainwhen, :pisustain, :piprogress, :completion, :evaluation, :dpatient_id, :dstdoctor_id)
    end
end
