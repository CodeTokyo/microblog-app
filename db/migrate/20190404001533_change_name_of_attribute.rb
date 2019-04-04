class ChangeNameOfAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_column :relationships, :folowee_id, :followee_id
  end
end
