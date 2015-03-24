class JobtodosController < ApplicationController
 
  before_filter :authenticate
  
  def index
    @jobtodos = Jobtodo.where(email: current_email)
  end
  
  def new
  	@jobtodo = Jobtodo.new
  end
 
  
  def create
  	@jobtodo = Jobtodo.new(todo_params.merge( email: current_email))
    if @jobtodo.save
      redirect_to jobtodos_path
    else
    	render 'new'
    end
  end

  private
    def todo_params
      params.require(:jobtodo).permit(:title)
    end
end
