class EmployeesController < ApplicationController

  before_action :set_find, only: [:show, :edit, :update]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @dogs = Dog.all 
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to @employee
  end

  def edit
    @dogs = Dog.all
  end

  def update
    @employee.update(employee_params)
    redirect_to @employee
  end

  private

    def set_find
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end
end
