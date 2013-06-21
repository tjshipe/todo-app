require_relative 'config/application'
require_relative 'app/models/task'

require 'faker'

class Todo

  def list_all
    task = Task.all
    task.each { |task| puts "#{task.id} #{task.description} #{task.completed}" }
  end

  def add_task(task)
    new_task = Task.new
    new_task.description = "#{task}"
    new_task.completed = 0
    new_task.list_id = 1
    new_task.save
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

todo = Todo.new

if ARGV.any?
  command = ARGV[0]
  param = ARGV[1] unless ARGV[1].nil?
  if command == 'list'
    todo.list_all
  elsif command == 'add'
    todo.add_task(param)
  elsif command == 'delete'
    todo.delete_task(param)
  elsif command == 'complete'
    todo.complete(param)
  end
end
