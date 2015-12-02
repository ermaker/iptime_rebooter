require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new

task default: :spec

namespace :rubocop do
  desc "Run 'rubocop --auto-gen-config'"
  task :todo do
    sh 'rubocop --auto-gen-config'
  end
end
