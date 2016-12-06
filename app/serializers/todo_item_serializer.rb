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
#  done         :boolean          default(FALSE)
#
# Indexes
#
#  index_todo_items_on_todo_list_id  (todo_list_id)
#

class TodoItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :completed_at, :done
end
