class DeleteIndexFromTables < ActiveRecord::Migration
  def change
  	remove_index :subject_participants, column: :interested_id
  	remove_index :subject_participants, column: :subject_id

  	remove_index :subjects, column: :conference_id
  	remove_index :subjects, column: :questioner_id
  end
end
