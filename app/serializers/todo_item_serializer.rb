class TodoItemSerializer < ActiveModel::Serializer
  attributes :id, :content, :completed_at
end
