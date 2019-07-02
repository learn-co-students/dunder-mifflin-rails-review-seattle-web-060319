class DogsController < ApplicationController

  def show
    @dog = Dog.find(params[:id])
    @employees = Employee.all
  end

  def index
    @dogs = Dog.all
  end

end
