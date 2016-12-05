require "test_helper"

# To be handled correctly this spec must end with "Integration Test"
describe "Todolist Integration Test" do
  it "GET /" do
    visit '/'
    assert 200, status
    assert '/', path
   end

  it "should create a todolist" do
    visit '/'
    page.click_on('New Todo List')
    page.fill_in('Enter Todo list title', with: 'Coding test')
    page.fill_in('Enter Todo list description', with: 'Coding description')
    page.click_on('Create Todo list')
    assert 200, status
  end

end
