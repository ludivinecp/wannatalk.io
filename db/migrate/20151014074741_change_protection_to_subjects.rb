class ChangeProtectionToSubjects < ActiveRecord::Migration
  def up
    change_column_null(:subjects, :participant_id, false)
    change_column_null(:subjects, :conference_id, false)
  end

  def down
    change_column_null(:subjects, :participant_id, true)
    change_column_null(:subjects, :conference_id, true)
  end
end
