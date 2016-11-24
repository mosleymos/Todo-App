# Monkey patch, gem rails-perftest
require 'rake/testtask'
class Rails::SubTestTask < Rake::TestTask
end
