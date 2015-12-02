require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

namespace :rubocop do
  desc "Run 'rubocop --auto-correct'"
  task :correct do
    sh 'rubocop --auto-correct'
  end
  desc "Run 'rubocop --auto-gen-config'"
  task :todo do
    sh 'rubocop --auto-gen-config'
  end
end
