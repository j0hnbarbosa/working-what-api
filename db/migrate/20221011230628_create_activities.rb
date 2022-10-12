class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.datetime :initial_hour
      t.datetime :end_hour
      t.string :spent_time
      t.string :description
      t.datetime :date_work
      t.string :status

      t.timestamps
    end
  end
end
