class ChangeLanguageToTopic < ActiveRecord::Migration[6.0]
  def change
    rename_column :courses, :language, :topic
  end
end
