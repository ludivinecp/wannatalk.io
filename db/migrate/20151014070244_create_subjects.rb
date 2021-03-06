class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title, null: false
      t.text :description
      t.references :participant, index: true, foreign_key: true
      t.references :conference, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
