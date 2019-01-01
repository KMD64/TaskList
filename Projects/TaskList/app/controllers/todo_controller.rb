class TodoController < ApplicationController
  def index
      @projects = Project.all
      @type = params['type']
      if type == 'html'
      respond_to do |format|
        format.json{render json: @projects}
      else
        respond_to do |format|
        format.html
      end
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
