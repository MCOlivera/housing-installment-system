class AddBuyerIdToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :buyer_id, :integer
  end
end
