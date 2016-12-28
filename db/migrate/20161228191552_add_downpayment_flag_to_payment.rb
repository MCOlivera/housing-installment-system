class AddDownpaymentFlagToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :is_downpayment, :boolean, :default => false
  end
end
