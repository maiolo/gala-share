class AddApprovedToDeals < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :approved, :boolean, defaul: false
  end
end
