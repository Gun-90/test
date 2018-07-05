class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :ceo_name
      t.string :truck_name
      t.belongs_to :user

      t.timestamps
    end
  end
end
