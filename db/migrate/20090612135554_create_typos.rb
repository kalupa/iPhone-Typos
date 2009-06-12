class CreateTypos < ActiveRecord::Migration
  def self.up
    create_table :typos do |t|
      t.string :typo
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :typos
  end
end
