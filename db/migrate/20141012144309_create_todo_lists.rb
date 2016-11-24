class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :title, null: false
      t.text :description, null: true, default: ""

      t.timestamps
    end
  end
end
