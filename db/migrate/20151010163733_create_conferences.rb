class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title
      t.string :url
      t.date :date

      t.timestamps null: false
    end
  end
end
