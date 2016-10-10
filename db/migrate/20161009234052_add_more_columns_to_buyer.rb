class AddMoreColumnsToBuyer < ActiveRecord::Migration
  def change
    add_column :buyers, :period_covered1, :string
    add_column :buyers, :position1, :string
    add_column :buyers, :employment_status1, :string
    add_column :buyers, :employer1, :string
    add_column :buyers, :nature1, :string
    add_column :buyers, :office_tel_no1, :string
    
    add_column :buyers, :period_covered2, :string
    add_column :buyers, :position2, :string
    add_column :buyers, :employment_status2, :string
    add_column :buyers, :employer2, :string
    add_column :buyers, :nature2, :string
    add_column :buyers, :office_tel_no2, :string
    
    add_column :buyers, :period_covered3, :string
    add_column :buyers, :position3, :string
    add_column :buyers, :employment_status3, :string
    add_column :buyers, :employer3, :string
    add_column :buyers, :nature3, :string
    add_column :buyers, :office_tel_no3, :string
    
    add_column :buyers, :spouse_first_name, :string
    add_column :buyers, :spouse_middle_name, :string
    add_column :buyers, :spouse_family_name, :string
    
    add_column :buyers, :spouse_birthdate, :date
    add_column :buyers, :spouse_age, :integer
    add_column :buyers, :spouse_citizenship, :string
    add_column :buyers, :spouse_sex, "ENUM('male', 'female')"
    add_column :buyers, :spouse_civil_status, "ENUM ('single', 'married', 'widowed', 'leg_separated')"
    add_column :buyers, :spouse_no_of_dependents, :integer
    
    add_column :buyers, :spouse_home_address, :string
    add_column :buyers, :spouse_home_zip_code, :string
    
    add_column :buyers, :spouse_education, "ENUM ('high_school', 'college', 'post_graduate', 'others')"
    add_column :buyers, :spouse_cellphone_number, :string
    add_column :buyers, :spouse_email_address, :string
    add_column :buyers, :spouse_sss_hdmf_gsis_number, :string
    
    add_column :buyers, :spouse_occupation, "ENUM ('self_employed', 'unemployed', 'employed', 'retired')"
    add_column :buyers, :spouse_employment_type, "ENUM ('local', 'ofw')"
    add_column :buyers, :spouse_years_worked, :integer
    add_column :buyers, :spouse_years_abroad, :integer
    add_column :buyers, :spouse_contract_end, :date
    
    add_column :buyers, :spouse_insurance, :string
    add_column :buyers, :spouse_coverage_amount, :integer
    
    add_column :buyers, :spouse_period_covered1, :string
    add_column :buyers, :spouse_position1, :string
    add_column :buyers, :spouse_employment_status1, :string
    add_column :buyers, :spouse_employer1, :string
    add_column :buyers, :spouse_nature1, :string
    add_column :buyers, :spouse_office_tel_no1, :string
    
    add_column :buyers, :spouse_period_covered2, :string
    add_column :buyers, :spouse_position2, :string
    add_column :buyers, :spouse_employment_status2, :string
    add_column :buyers, :spouse_employer2, :string
    add_column :buyers, :spouse_nature2, :string
    add_column :buyers, :spouse_office_tel_no2, :string
    
    add_column :buyers, :spouse_period_covered3, :string
    add_column :buyers, :spouse_position3, :string
    add_column :buyers, :spouse_employment_status3, :string
    add_column :buyers, :spouse_employer3, :string
    add_column :buyers, :spouse_nature3, :string
    add_column :buyers, :spouse_office_tel_no3, :string
  end
end
