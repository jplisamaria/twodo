class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :done, default: false
      t.belongs_to :list, index: true

      t.timestamps
    end
  end
end
