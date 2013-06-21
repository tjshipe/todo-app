class CreateList < ActiveRecord::Migration

  def change
  
    create_table :lists do |t|
      t.string     :name
      t.integer    :completed

      t.timestamps
    end 
  end 
end 
