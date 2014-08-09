class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :artist, index: true
      t.references :fan, index: true

      t.timestamps
    end
  end
end
