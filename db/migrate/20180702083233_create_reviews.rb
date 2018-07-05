class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.string :ceo_name
      t.string :truck_name
      #위치
      #

      t.timestamps
    end
  end
end
