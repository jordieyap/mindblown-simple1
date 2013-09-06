class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :priority
      t.string :status

      t.timestamps
    end
  end
end
