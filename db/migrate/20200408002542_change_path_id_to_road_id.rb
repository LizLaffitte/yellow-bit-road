class ChangePathIdToRoadId < ActiveRecord::Migration[6.0]
  def change
    rename_column :checkpoints, :path_id, :road_id
  end
end
