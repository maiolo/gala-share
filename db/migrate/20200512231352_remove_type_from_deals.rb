class RemoveTypeFromDeals < ActiveRecord::Migration[6.0]
  def change
    remove_column :deals, :type
  end
end
