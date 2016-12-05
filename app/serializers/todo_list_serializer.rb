# == Schema Information
#
# Table name: todo_lists
#
#  id          :integer          not null, primary key
#  title       :string(500)      not null
#  description :text(10000)      default("")
#  created_at  :datetime
#  updated_at  :datetime
#

class TodoListSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
end
