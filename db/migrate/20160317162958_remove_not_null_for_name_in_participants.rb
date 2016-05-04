class RemoveNotNullForNameInParticipants < ActiveRecord::Migration
  def change
    change_column_null(:participants, :name, true )
  end
end
