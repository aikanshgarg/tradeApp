class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :messages, :conversion_id, :conversation_id
  end
end
