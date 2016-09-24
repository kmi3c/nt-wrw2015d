class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :value, :decimal, precision: 8, scale: 2
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
