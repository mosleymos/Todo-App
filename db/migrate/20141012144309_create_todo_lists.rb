class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :title, null: false, limit: 500
      t.text :description, null: true, default: "", limit: 10_000

      t.timestamps
    end
  end
end
