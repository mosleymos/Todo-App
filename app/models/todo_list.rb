# == Schema Information
#
# Table name: todo_lists
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             default("")
#  created_at  :datetime
#  updated_at  :datetime
#

class TodoList < ActiveRecord::Base

  validates :title, presence: true
  has_many :todo_items, dependent: :destroy

  # Ordered by the most recent
  default_scope { order('created_at DESC') }
end
