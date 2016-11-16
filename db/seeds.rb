# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create simple lists
todolist =  TodoList.create({
    title: "First List of task"  ,
    description: "List of task to do as an example"
  })

# Create simple Tasks
TodoItem.create({
  todo_list_id: todolist.id,
  content: "1ere tache"
})

TodoItem.create({
  todo_list_id: todolist.id,
  content: "2eme tache"
})
