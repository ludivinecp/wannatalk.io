class ChangeProtectionToParticipants < ActiveRecord::Migration
  def up
    change_column_null(:participants, :name, false)
  end

  def down
    change_column_null(:participants, :name, true)
  end
end
