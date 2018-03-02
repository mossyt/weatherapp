class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.text :address
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
