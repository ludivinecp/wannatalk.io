class ChangePartcipantIdIntoFk < ActiveRecord::Migration
  def change
   	rename_column :subjects, :participant_id, :questioner_id
 	add_foreign_key :subjects, :participants, column: :questioner_id

   	rename_column :subject_participants, :participant_id, :interested_id
 	add_foreign_key :subject_participants, :participants, column: :interested_id
  end
end
