class TodoController < ApplicationController
  def index
      @projects = Project.all
    
  end
  def update
  end
  def create
    project = Project.find(params['project_id'])
    todo = Todo.create text: params['text'], isCompleted: false
    project.todos << todo
    redirect_to '/'
  end
end
