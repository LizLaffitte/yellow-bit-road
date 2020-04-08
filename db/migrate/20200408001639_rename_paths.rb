class RenamePaths < ActiveRecord::Migration[6.0]
  def change
    rename_table :paths, :roads
  end
end
