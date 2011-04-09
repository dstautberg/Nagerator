class CreateToDoHistories < ActiveRecord::Migration
  def self.up
    create_table :to_do_histories do |t|
      t.integer :to_do_item_id
      t.datetime :completed_at
      t.datetime :due_at

      t.timestamps
    end
  end

  def self.down
    drop_table :to_do_histories
  end
end
