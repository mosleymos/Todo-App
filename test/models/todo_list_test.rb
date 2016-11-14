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
  test "simple TODO list creation" do
    simple_todo_item = TodoList.create(title: "Communication to do", description: "Communication plan for the enterprise")
    assert_equal 3, TodoList.count
  end
end
