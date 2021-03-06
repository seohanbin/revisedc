class StdoctorregistsController < ApplicationController
  before_action :check_stdoctor
  before_action :set_stdoctorregist, only: [:show, :edit, :update, :destroy]


  # GET /stdoctorregists
  # GET /stdoctorregists.json
  def index
    @stdoctorregists = current_dstdoctor.stdoctorregists.all

    @patientregists = current_dstdoctor.patientregists.all
  end

  # GET /stdoctorregists/1
  # GET /stdoctorregists/1.json
  def show
  end

  # GET /stdoctorregists/new
  def new
    @stdoctorregist = Stdoctorregist.new
  end

  # GET /stdoctorregists/1/edit
  def edit
  end

  # POST /stdoctorregists
  # POST /stdoctorregists.json
  def create
    #current_dpatient.patientregists.
    @stdoctorregist = current_dstdoctor.stdoctorregists.new(stdoctorregist_params)

    respond_to do |format|
      if @stdoctorregist.save
        format.html { redirect_to @stdoctorregist, notice: 'Stdoctorregist was successfully created.' }
        format.json { render :show, status: :created, location: @stdoctorregist }
      else
        format.html { render :new }
        format.json { render json: @stdoctorregist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stdoctorregists/1
  # PATCH/PUT /stdoctorregists/1.json
  def update
    respond_to do |format|
      if @stdoctorregist.update(stdoctorregist_params)
        format.html { redirect_to @stdoctorregist, notice: 'Stdoctorregist was successfully updated.' }
        format.json { render :show, status: :ok, location: @stdoctorregist }
      else
        format.html { render :edit }
        format.json { render json: @stdoctorregist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stdoctorregists/1
  # DELETE /stdoctorregists/1.json
  def destroy
    @stdoctorregist.destroy
    respond_to do |format|
      format.html { redirect_to stdoctorregists_url, notice: 'Stdoctorregist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stdoctorregist
      @stdoctorregist = Stdoctorregist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stdoctorregist_params
      params.require(:stdoctorregist).permit(:treatsubject, :treatdescript, :treatcondition, :completion, :evaluation, :dpatient_id, :dstdoctor_id)
    end

    def check_stdoctor

      if signed_in?
  	    if current_dstdoctor
  	      return
  	    elsif current_dpatient
  	      redirect_to :root, notice: "의사로만 접근이 가능합니다.."
  	    end

      else
        redirect_to :root, notice: "로그인이 필요합니다..!"
  	  end

    end
end
