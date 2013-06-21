require_relative 'config/application'
require_relative '..db/config'
require 'faker'

class Todo
  def initialize()

  end

  def list
    tasks = Task.new
    tasks.each { |task| puts task.id }
  end

  def add_task(task)
    @tasks << Task.new([task])
    p @tasks
  end

  def delete_task(id)
    Task.find(id).destroy
    # Task.destroy_all(:id => 'id')
  end

  def complete(id)
    task = Task.find(id)
    task.completed = 1
    task.save
  end

end

puts "Put your application code in #{File.expand_path(__FILE__)}"
