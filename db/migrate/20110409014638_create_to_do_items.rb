class CreateToDoItems < ActiveRecord::Migration
  def self.up
    create_table :to_do_items do |t|
      t.string :name
      t.text :description
      t.datetime :due_at
      t.integer :interval
      t.integer :grace_period

      t.timestamps
    end
  end

  def self.down
    drop_table :to_do_items
  end
end
