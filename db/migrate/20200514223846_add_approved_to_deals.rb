class AddApprovedToDeals < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :approved, :boolean, null: false, default: false
  end
end
