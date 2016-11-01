class AddColumnsToBuyer < ActiveRecord::Migration
  def change
    add_column :buyers, :first_name, :string
    add_column :buyers, :middle_name, :string
    add_column :buyers, :family_name, :string
    
    add_column :buyers, :birthdate, :date
    add_column :buyers, :age, :integer
    add_column :buyers, :citizenship, :string
    add_column :buyers, :sex, "ENUM('male', 'female')"
    add_column :buyers, :civil_status, "ENUM ('single', 'married', 'widowed', 'leg_separated')"
    add_column :buyers, :no_of_dependents, :integer
    
    add_column :buyers, :home_address, :string
    add_column :buyers, :home_zip_code, :string
    add_column :buyers, :home_ownership, "ENUM ('owned', 'rented', 'living_with_relatives', 'company_provided', 'others')"
    add_column :buyers, :years_of_stay, :integer
    add_column :buyers, :home_tel_number, :string
    
    add_column :buyers, :prov_address, :string
    add_column :buyers, :acr_resident_card_number, :string
    add_column :buyers, :prov_zip_code, :string
    
    add_column :buyers, :education, "ENUM ('high_school', 'college', 'post_graduate', 'others')"
    add_column :buyers, :cellphone_number, :string
    add_column :buyers, :email_address, :string
    add_column :buyers, :sss_hdmf_gsis_number, :string
    add_column :buyers, :tin, :string
    
    add_column :buyers, :occupation, "ENUM ('self_employed', 'unemployed', 'employed', 'retired')"
    add_column :buyers, :employment_type, "ENUM ('local', 'ofw')"
    add_column :buyers, :years_worked, :integer
    add_column :buyers, :years_abroad, :integer
    add_column :buyers, :contract_end, :date
    
    add_column :buyers, :insurance, :string
    add_column :buyers, :coverage_amount, :decimal
  end
end
