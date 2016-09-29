class AddSpouseIdToBuyer < ActiveRecord::Migration
  def change
    add_column :buyers, :spouse_id, :integer
  end
end
