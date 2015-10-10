class ChangeProtectionToConferences < ActiveRecord::Migration
  def up
    change_column_null(:conferences, :title, false)
    change_column_null(:conferences, :date, false)
  end

  def down
    change_column_null(:conferences, :title, true)
    change_column_null(:conferences, :date, true)
  end
end
