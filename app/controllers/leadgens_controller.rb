class LeadgensController < ApplicationController
  before_action :set_leadgen, only: [:show, :edit, :update, :destroy]

  # GET /leadgens
  # GET /leadgens.json
  def index
    @leadgens = Leadgen.all
  end

  # GET /leadgens/1
  # GET /leadgens/1.json
  def show
  end

  # GET /leadgens/new
  def new
    @leadgen = Leadgen.new
  end

  # GET /leadgens/1/edit
  def edit
  end

  # POST /leadgens
  # POST /leadgens.json
  def create
    @leadgen = Leadgen.new(leadgen_params)

    respond_to do |format|
      if @leadgen.save
        format.html { redirect_to @leadgen, notice: 'Leadgen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @leadgen }
      else
        format.html { render action: 'new' }
        format.json { render json: @leadgen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leadgens/1
  # PATCH/PUT /leadgens/1.json
  def update
    respond_to do |format|
      if @leadgen.update(leadgen_params)
        format.html { redirect_to @leadgen, notice: 'Leadgen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @leadgen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leadgens/1
  # DELETE /leadgens/1.json
  def destroy
    @leadgen.destroy
    respond_to do |format|
      format.html { redirect_to leadgens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to button common setup or constraints between actions.
    def set_leadgen
      @leadgen = Leadgen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leadgen_params
      params.require(:leadgen).permit(:companies, :deadline, :leadsper, :title)
    end
end
