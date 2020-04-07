class AddLanguageToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :language, :string
  end
end
