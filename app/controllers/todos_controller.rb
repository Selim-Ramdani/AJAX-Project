class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.create(todo_params)
    respond_to do |format|
      format.html { redirect_to todos_path }
      format.js {}
    end
  end

  private
  
  def todo_params
    params.permit(:title, :description)
  end
  
end
