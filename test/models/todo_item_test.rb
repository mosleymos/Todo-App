# == Schema Information
#
# Table name: todo_items
#
#  id           :integer          not null, primary key
#  content      :string           not null
#  todo_list_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#  completed_at :datetime
#
# Indexes
#
#  index_todo_items_on_todo_list_id  (todo_list_id)
#

require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
  test 'simple TODO item creation' do
    simple_todo_list = todo_lists(:groceries_list)
    simple_todo_item = TodoItem.create(content: 'Buy some mustard', todo_list_id: simple_todo_list.id)
    assert_equal 3,  TodoItem.count
  end

  test '#new' do
    simple_todo_item = TodoItem.new
    assert simple_todo_item.respond_to? :content
    assert simple_todo_item.respond_to? :todo_list_id
  end

  test '#completed?' do
    simple_todo_list = todo_lists(:groceries_list)
    simple_todo_item = TodoItem.create(content: 'Buy some mustard', todo_list_id: simple_todo_list.id)
    assert_equal false, simple_todo_item.completed?
  end
end
