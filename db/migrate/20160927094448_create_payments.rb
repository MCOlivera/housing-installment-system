class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :due_date
      t.date :date_paid
      t.integer :or_number
      t.float :total_payment
      t.float :principal_amount
      t.float :interest_amount
      t.float :installment_penalty_amount
      t.float :balance_penalty_amount
      t.float :grand_total

      t.timestamps null: false
    end
  end
end
