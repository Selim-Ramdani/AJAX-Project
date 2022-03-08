class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    @todo = Todo.new(todo_params)
    
    if @todo.save
      flash[:alert] = "La tâche a bien été enregistrée !"
    else
      flash[:alert] = "Il y a un petit problème"
      render('new')
      puts @todo.errors.full_message
    end
  end

  private
  
  def todo_params
    params.permit(:title, :description)
  end
  
end
