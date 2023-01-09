class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.integer :price
      t.string :status
      t.references :application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
