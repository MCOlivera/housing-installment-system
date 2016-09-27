class CreateEmploymentHistories < ActiveRecord::Migration
  def change
    create_table :employment_histories do |t|
      t.string :period_covered
      t.string :position
      t.string :employment_status
      t.string :employer
      t.string :nature
      t.string :office_tel_no

      t.timestamps null: false
    end
  end
end
