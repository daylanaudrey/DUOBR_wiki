class CreateAlarms < ActiveRecord::Migration
  def change
		create_table "alarms", force: true do |t|
		  t.string   "priority"
		  t.boolean  "enabled"
		end
  end
end
