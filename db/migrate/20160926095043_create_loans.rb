class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :TCT
      t.string :subdivision_name
      t.integer :block
      t.integer :lot
      t.integer :lot_area
      t.integer :floor_area
      t.float :purchase_price
      t.float :monthly_installment
      t.integer :interest_rate

      t.timestamps null: false
    end
  end
end
