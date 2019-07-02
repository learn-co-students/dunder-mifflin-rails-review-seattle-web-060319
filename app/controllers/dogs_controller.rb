class DogsController < ApplicationController

  before_action :set_find, only: [:show, :edit, :update]

  def index
    @dogs = Dog.all
  end

  def show
    #@employees = Employee.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new

    redirect_to @dog
  end

  def edit
    @employees = Employee.all 
  end

  def update
  end

  private

    def set_find
      @dog = Dog.find(params[:id])
    end

    def dog_params
      params.require(:dog).permit(:name, :breed, :age)
    end

end
