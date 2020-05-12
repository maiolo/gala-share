class AddDealTypeAndAvailableToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :available, :boolean, default: true
    add_column :products, :deal_type, :string
  end
end
