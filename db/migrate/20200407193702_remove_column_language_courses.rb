class RemoveColumnLanguageCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :paths, :language
  end
end
