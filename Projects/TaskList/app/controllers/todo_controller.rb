class TodoController < ApplicationController
  def index
      @projects = Project.all
      for @prj in @projects do
         @prj.todos = Todo.where project_id: @prj.id 
      end
      @projects = @projects.to_json
  end
  def update
      todo = Todo.find(params['todo_id'])
      todo.update isCompleted: !todo.isCompleted
      redirect_to '/'
  end
  def create
    project = Project.find(params['project_id'])
    todo = Todo.create text: params['text'], isCompleted: false
    project.todos << todo
    redirect_to '/'
  end
end
