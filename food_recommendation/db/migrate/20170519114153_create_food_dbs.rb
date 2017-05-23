class CreateFoodDbs < ActiveRecord::Migration
  def change
    create_table :food_dbs do |t|
      t.integer :breakfast
      t.integer :lunch
      t.integer :dinner
      t.string :breakfast_food
      t.string :lunch_food
      t.string :dinner_food
      t.timestamps null: false
    end
  end
end
