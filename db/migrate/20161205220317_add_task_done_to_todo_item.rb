class AddTaskDoneToTodoItem < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_items, :done, :boolean, default: false
  end
end
