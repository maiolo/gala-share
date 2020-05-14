class RecreateDeals < ActiveRecord::Migration[6.0]
  def change
    drop_table :deals
    create_table :deals do |t|
      t.string :type
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
