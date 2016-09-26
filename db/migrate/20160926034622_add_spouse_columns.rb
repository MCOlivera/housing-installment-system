class AddSpouseColumns < ActiveRecord::Migration
  def change
    add_column :spouses, :first_name, :string
    add_column :spouses, :middle_name, :string
    add_column :spouses, :family_name, :string
    
    add_column :spouses, :birthdate, :date
    add_column :spouses, :age, :integer
    add_column :spouses, :citizenship, :string
    add_column :spouses, :sex, "ENUM('male', 'female')"
    add_column :spouses, :civil_status, "ENUM ('single', 'married', 'widowed', 'leg_separated')"
    add_column :spouses, :no_of_dependents, :integer
    
    add_column :spouses, :home_address, :string
    add_column :spouses, :home_zip_code, :string
    
    add_column :spouses, :education, "ENUM ('high_school', 'college', 'post_graduate', 'others')"
    add_column :spouses, :cellphone_number, :string
    add_column :spouses, :email_address, :string
    add_column :spouses, :sss_hdmf_gsis_number, :string
    
    add_column :spouses, :occupation, "ENUM ('self_employed', 'unemployed', 'employed', 'retired')"
    add_column :spouses, :employment_type, "ENUM ('local', 'ofw')"
    add_column :spouses, :years_worked, :integer
    add_column :spouses, :years_abroad, :integer
    add_column :spouses, :contract_end, :date
    
    add_column :spouses, :insurance, :string
    add_column :spouses, :coverage_amount, :integer
  end
end
