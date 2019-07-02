class EmployeesController < ApplicationController
  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end

  def create
    @employee = Employee.new(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id))
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id))
    redirect_to employee_path(@employee)
      else
        render :edit
    end
  end
  
end
