class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :description
      t.integer :participant_id
      t.integer :conference_id

      t.timestamps null: false
    end
  end
end
