class CreateConferenceParticipants < ActiveRecord::Migration
  def change
    create_table :conference_participants do |t|
      t.references :participant, foreign_key: true
      t.references :conference, foreign_key: true

      t.timestamps null: false
    end
  end
end
