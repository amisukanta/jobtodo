class JobtodosController < ApplicationController

  def index
    @jobtodos = Jobtodo.all
  end
  
  def new
  	@jobtodo = Jobtodo.new
  end

  def create
  	@jobtodo = Jobtodo.new(todo_params)
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