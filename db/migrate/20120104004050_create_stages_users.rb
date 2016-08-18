class CreateStagesUsers < ActiveRecord::Migration
  def self.up
    create_table :stages_users, :id => false do |t|
      t.integer :stage_id
      t.integer :user_id
      t.boolean :read_only
    end

    add_index :stages_users, [:stage_id, :user_id], :unique => true
  end

  def self.down
    drop_table :stages_users
  end
end
