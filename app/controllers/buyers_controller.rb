class BuyersController < ApplicationController
  before_action :set_buyer, only: [:show, :edit, :update, :destroy]

  # GET /buyers
  # GET /buyers.json
  def index
    @buyers = Buyer.all
  end

  # GET /buyers/1
  # GET /buyers/1.json
  def show
  end

  # GET /buyers/new
  def new
    @buyer = Buyer.new
  end

  # GET /buyers/1/edit
  def edit
  end

  # POST /buyers
  # POST /buyers.json
  def create
    @buyer = Buyer.new(buyer_params)
    
    if @buyer.years_abroad.eql? 0
      @buyer.contract_end = nil
    end
    
    if !@buyer.civil_status.eql? 'married'
      @buyer.spouse_birthdate = nil
      @buyer.spouse_contract_end = nil
    end
    
    if @buyer.spouse_years_abroad.eql? 0
      @buyer.spouse_contract_end = nil
    end

    @buyer.total_salary = @buyer.applicant_salary + @buyer.spouse_salary
    @buyer.total_allowances = @buyer.applicant_allowances + @buyer.spouse_allowances
    @buyer.total_expenses = @buyer.applicant_expenses + @buyer.spouse_expenses
    @buyer.total_business_income = @buyer.applicant_business_income + @buyer.spouse_business_income
    @buyer.total_commissions = @buyer.applicant_commissions + @buyer.spouse_commissions
    @buyer.total_others = @buyer.applicant_others + @buyer.spouse_others
    
    @buyer.applicant_gross_family_income = @buyer.applicant_salary + @buyer.applicant_allowances + @buyer.applicant_business_income + @buyer.applicant_commissions + @buyer.applicant_others
    
    @buyer.spouse_gross_family_income = @buyer.spouse_salary + @buyer.spouse_allowances + @buyer.spouse_business_income + @buyer.spouse_commissions + @buyer.spouse_others
    
    @buyer.total_gross_family_income = @buyer.total_salary + @buyer.total_allowances + @buyer.total_business_income + @buyer.total_commissions + @buyer.total_others
    
    @buyer.applicant_total_expenses = @buyer.applicant_expenses
    @buyer.spouse_total_expenses = @buyer.spouse_expenses
    
    @buyer.total_gross_family_income = @buyer.applicant_gross_family_income + @buyer.spouse_gross_family_income
    @buyer.total_total_expenses = @buyer.applicant_total_expenses + @buyer.spouse_total_expenses
    
    @buyer.applicant_net_disposable_income = @buyer.applicant_gross_family_income - @buyer.applicant_total_expenses
    @buyer.spouse_net_disposable_income = @buyer.spouse_gross_family_income - @buyer.spouse_total_expenses
    @buyer.total_net_disposable_income = @buyer.applicant_net_disposable_income + @buyer.spouse_net_disposable_income

    respond_to do |format|
      if @buyer.save
        format.html { redirect_to '/buyers', notice: 'Buyer was successfully created.' }
        format.json { render :show, status: :created, location: @buyer }
      else
        format.html { render :new }
        format.json { render json: @buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyers/1
  # PATCH/PUT /buyers/1.json
  def update
    respond_to do |format|
      if @buyer.update(buyer_params)
        format.html { redirect_to @buyer, notice: 'Buyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyer }
      else
        format.html { render :edit }
        format.json { render json: @buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyers/1
  # DELETE /buyers/1.json
  def destroy
    @buyer.destroy
    respond_to do |format|
      format.html { redirect_to buyers_url, notice: 'Buyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def add_employment_history
    # @employment_history = EmploymentHistory.new(employment_history_params)
    @buyer.employment_histories.create(employment_history_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer
      @buyer = Buyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_params
      params.require(:buyer).permit(:first_name, :middle_name, :family_name, :birthdate, :age, :citizenship, :sex, :sex, :civil_status, :civil_status, :civil_status, :civil_status, :no_of_dependents, :home_address, :home_zip_code, :home_ownership, :home_ownership, :home_ownership, :home_ownership, :home_ownership, :years_of_stay, :home_tel_number, :prov_address, :prov_zip_code, :acr_resident_card_number, :education, :education, :education, :education, :cellphone_number, :email_address, :sss_hdmf_gsis_number, :tin, :occupation, :occupation, :occupation, :occupation, :employment_type, :employment_type, :years_worked, :years_abroad, :contract_end, :period_covered1, :position1, :employment_status1, :employer1, :nature1, :office_tel_no1, :period_covered2, :position2, :employment_status2, :employer2, :nature2, :office_tel_no2, :period_covered3, :position3, :employment_status3, :employer3, :nature3, :office_tel_no3, :insurance, :coverage_amount, :spouse_first_name, :spouse_middle_name, :spouse_family_name, :spouse_birthdate, :spouse_age, :spouse_citizenship, :spouse_sex, :spouse_sex, :spouse_civil_status, :spouse_civil_status, :spouse_civil_status, :spouse_civil_status, :spouse_no_of_dependents, :spouse_home_address, :spouse_home_zip_code, :spouse_education, :spouse_education, :spouse_education, :spouse_education, :spouse_cellphone_number, :spouse_email_address, :spouse_sss_hdmf_gsis_number, :spouse_occupation, :spouse_occupation, :spouse_occupation, :spouse_occupation, :spouse_employment_type, :spouse_employment_type, :spouse_years_worked, :spouse_years_abroad, :spouse_contract_end, :spouse_period_covered1, :spouse_position1, :spouse_employment_status1, :spouse_employer1, :spouse_nature1, :spouse_office_tel_no1, :spouse_period_covered2, :spouse_position2, :spouse_employment_status2, :spouse_employer2, :spouse_nature2, :spouse_office_tel_no2, :spouse_period_covered3, :spouse_position3, :spouse_employment_status3, :spouse_employer3, :spouse_nature3, :spouse_office_tel_no3, :spouse_insurance, :spouse_coverage_amount, :applicant_salary, :spouse_salary, :applicant_allowances, :spouse_allowances, :applicant_expenses, :spouse_expenses, :applicant_business_income, :spouse_business_income, :applicant_commissions, :spouse_commissions, :applicant_others, :spouse_others)
    end
end
