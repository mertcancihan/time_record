class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.timestamp :begin_time
      t.timestamp :deadline_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
