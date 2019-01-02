class TodoController < ApplicationController
    protect_from_forgery with: :null_session
  def index
      @projects = Project.all
      
        respond_to do |format|
          format.json{render json: @projects}
          format.html
        end
  end
  def gettodolist
    @todos = Todo.where project_id: params['project_id']
    respond_to do |format|
        format.json{render json: @todos}
        format.html{render html: @todos}
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
    respond_to do |format|
        format.json{render json: todo}
        format.html{redirect_to '/'}
    end
    
  end
end
