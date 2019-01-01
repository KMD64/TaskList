class TodoController < ApplicationController
  def index
      @projects = Project.all
      
      respond_to do |format|
        format.html
        format.json {render json: @projects}
        format.xml {render xml: @projects}
      end
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
