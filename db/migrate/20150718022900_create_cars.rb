class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      # meaning 8 characters to the left, 2 on the left max
      # 999999999.22
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
