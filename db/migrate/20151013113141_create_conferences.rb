class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title, null: false
      t.string :url
      t.date :date, null: false

      t.timestamps null: false
    end
  end
end
