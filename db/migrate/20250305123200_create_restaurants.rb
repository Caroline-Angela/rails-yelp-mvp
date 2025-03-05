class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.string :category
      # inclusion: { in: restaurant_types, message: '{value} is not a valid size' }
      validates :content, presence: true
      t.timestamps
    end
  end
end
