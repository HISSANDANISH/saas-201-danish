require 'active_record'

class Todo < ActiveRecord::Base
  def overdue?
    due_date < Date.today
  end
  def due_today?
    due_date == Date.today
  end
  def due_later?
    due_date > Date.today
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{id}. #{display_status} #{todo_text} #{display_date}"
  end
  def self.show_list
    puts "My todolist\n"
    puts "Overdue\n"
    puts all.filter{|todo| todo.overdue?}.map{|todo| todo.to_displayable_string}
    puts "\n\n"
    puts "Due Today\n"
    puts all.filter{|todo| todo.due_today?}.map{|todo| todo.to_displayable_string}
    puts "\n\n"
    puts "Due Later\n"
    puts all.filter{|todo| todo.due_later?}.map{|todo| todo.to_displayable_string}
    puts "\n\n"
    end
  def self.add_task(todo)
    create!(todo_text: todo[:todo_text],due_date: Date.today+todo[:due_in_days])
  end
  def self.mark_as_complete!(todo_id)
    todo=Todo.find(todo_id)
    todo.completed=true
    todo.save
    todo
  end
end
