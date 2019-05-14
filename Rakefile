# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'
require 'coveralls/rake/task'
require_relative 'config/application'

desc 'Run RSpec'
RSpec::Core::RakeTask.new do |t|
  t.verbose = false
end

task default: :spec

Coveralls::RakeTask.new

Rails.application.load_tasks
