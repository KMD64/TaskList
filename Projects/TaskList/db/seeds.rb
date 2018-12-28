# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = YAML.load_file("db/seeds.yml")
projects["projects"].each do |project|
   cprj = Project.create title:project["title"]
    project["todos"].each do |todo|
       ctd = Todo.create text:todo["text"],isCompleted:todo["isCompleted"]
       cprj.todos << ctd 
   end
end
    
