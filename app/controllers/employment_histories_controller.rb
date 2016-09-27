class EmploymentHistoriesController < ApplicationController
  before_action :set_employment_history, only: [:show, :edit, :update, :destroy]

  # GET /employment_histories
  # GET /employment_histories.json
  def index
    @employment_histories = EmploymentHistory.all
  end

  # GET /employment_histories/1
  # GET /employment_histories/1.json
  def show
  end

  # GET /employment_histories/new
  def new
    @employment_history = EmploymentHistory.new
  end

  # GET /employment_histories/1/edit
  def edit
  end

  # POST /employment_histories
  # POST /employment_histories.json
  def create
    @employment_history = EmploymentHistory.new(employment_history_params)

    respond_to do |format|
      if @employment_history.save
        format.html { redirect_to @employment_history, notice: 'Employment history was successfully created.' }
        format.json { render :show, status: :created, location: @employment_history }
      else
        format.html { render :new }
        format.json { render json: @employment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employment_histories/1
  # PATCH/PUT /employment_histories/1.json
  def update
    respond_to do |format|
      if @employment_history.update(employment_history_params)
        format.html { redirect_to @employment_history, notice: 'Employment history was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment_history }
      else
        format.html { render :edit }
        format.json { render json: @employment_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_histories/1
  # DELETE /employment_histories/1.json
  def destroy
    @employment_history.destroy
    respond_to do |format|
      format.html { redirect_to employment_histories_url, notice: 'Employment history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_history
      @employment_history = EmploymentHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_history_params
      params.require(:employment_history).permit(:period_covered, :position, :employment_status, :employer, :nature, :office_tel_no)
    end
end
