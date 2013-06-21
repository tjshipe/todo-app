
class CreateTask < ActiveRecord::Migration

  def change
  
    create_table :tasks do |t|
      t.string     :description
      t.integer    :completed

      t.timestamps
    end 
  end 
end 
