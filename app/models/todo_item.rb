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

class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  validates :content, presence: true

  # Ordered by the most recent
  default_scope { order('created_at DESC') }

  def completed?
    !completed_at.blank?
  end
end
