# == Schema Information
#
# Table name: todo_lists
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  description :text             default("No description available")
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class TodoListTest < ActiveSupport::TestCase
  test 'simple TODO list creation' do
    simple_todo_item = TodoList.create(title: 'Communication to do', description: 'Communication plan for the enterprise')
    assert_equal 3, TodoList.count
  end

  test 'a todolist when destroyed should destroy items too' do
    todolist = TodoList.create({
      title: "First List of task"  ,
      description: "List of task to do as an example"
    })

    # Create simple Tasks
    TodoItem.create({
      todo_list_id: todolist.id,
      content: "1ere tache"
    })

    TodoItem.create({
      todo_list_id: todolist.id,
      content: "2eme tache"
    })

    assert_equal 3, TodoList.count
    assert_equal 4, TodoItem.count

    # Destroy a todolist
    TodoList.destroy(todolist.id)

    assert_equal 2, TodoList.count
    assert_equal 2, TodoItem.count

  end
end
