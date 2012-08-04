class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :reference
      t.string :owner
      t.string :sn
      t.string :type
      t.text :description
      t.date :delivery_date

      t.timestamps
    end
  end
end
