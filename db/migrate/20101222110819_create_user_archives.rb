class CreateUserArchives < ActiveRecord::Migration
  def self.up
    create_table :user_archives do |t|
      t.integer :usr_id
      t.string :name
      t.string :email
      t.text :state
      t.datetime :usr_created
      t.datetime :usr_updated
      t.integer :archive_time

      t.timestamps
    end
  end

  def self.down
    drop_table :user_archives
  end
end
