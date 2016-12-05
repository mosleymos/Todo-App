require "test_helper"

# To be handled correctly this spec must end with "Integration Test"
describe "StaticContent Integration Test" do
   it "GET /hello" do
     visit '/hello'
     assert_equal true, !page.body.scan('Hello').empty?
     assert 200, status
     assert '/hello', path
   end

   it "GET /about" do
     visit '/about'
     assert_equal true, !page.body.scan('About').empty?
     assert 200, status
     assert '/about', path
   end
end
