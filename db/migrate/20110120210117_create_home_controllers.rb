class CreateHomeControllers < ActiveRecord::Migration
  def self.up
    create_table :home_controllers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :home_controllers
  end
end
