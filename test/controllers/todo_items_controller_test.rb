# == Schema Information
#
# Table name: todo_items
#
#  id           :integer          not null, primary key
#  content      :string(500)      not null
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

class TodoItemsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
