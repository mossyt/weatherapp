class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :city
      t.string :sky
      t.string :postcode
      t.string :temp

      t.timestamps null: false
    end
  end
end
