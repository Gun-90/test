class CreateCeoNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :ceo_notices do |t|

      t.timestamps
    end
  end
end
