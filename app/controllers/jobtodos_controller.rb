class JobtodosController < ApplicationController
 
  before_filter :authenticate
  
  def index
   @jobtodos = current_user.jobtodos
  end
  
  def new
  	@jobtodo = Jobtodo.new
  end
 
  
  def create
  	current_user.jobtodos.create(todo_params)
    redirect_to jobtodos_path
  end

  private
   def todo_params
    params.require(:jobtodo).permit(:title)
   end
end
