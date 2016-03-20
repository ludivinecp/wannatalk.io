class CreateSubjectParticipants < ActiveRecord::Migration
  def change
    create_table :subject_participants do |t|
    	t.belongs_to :participant, index: true
    	t.belongs_to :subject, index: true
      t.timestamps null: false
    end
  end
end
