class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :details
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
