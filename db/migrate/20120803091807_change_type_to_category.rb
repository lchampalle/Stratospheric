class ChangeTypeToCategory < ActiveRecord::Migration
  def up
    change_table :devices do |t|
      t.rename :type, :category
    end    
  end

  def down
    change_table :devices do |t|
      t.rename :category, :type
    end
  end
end
