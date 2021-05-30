class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.string :post_code

      t.timestamps
    end
  end
end
