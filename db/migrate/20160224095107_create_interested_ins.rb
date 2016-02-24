class CreateInterestedIns < ActiveRecord::Migration
  def change
    create_table :interested_ins do |t|

      t.timestamps null: false
    end
  end
end
