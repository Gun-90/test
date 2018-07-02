class CreateCustomerNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_notices do |t|

      t.timestamps
    end
  end
end
