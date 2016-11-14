require "test_helper"
require 'capybara/rails'
require "pry"

class TodoListWorkflowTest < Capybara::Rails::TestCase
  test "homepage" do
    visit root_path
    assert_content page, "Accueil"
    assert_content page, "New Todo List"
    refute_content page, "Hello"
  end
end
