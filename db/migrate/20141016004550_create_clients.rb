class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.decimal :monthly_fee
      t.decimal :tax
      t.date :charge_date

      t.timestamps
    end
  end
end
