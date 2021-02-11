class CreateShoppings < ActiveRecord::Migration[6.0]
  def change
    create_table :shoppings do |t|
      t.string     :product_name, null: false
      t.integer    :price, null: false
      #t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
