class RenameTyposColumnToHtml < ActiveRecord::Migration
  def self.up
    rename_column :typos, :typo, :html
  end

  def self.down
    rename_column :typos, :html, :typo
  end
end
