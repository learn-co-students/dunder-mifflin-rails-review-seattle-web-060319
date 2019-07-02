class DogsController < ApplicationController
    def index
        @employees = Employee.all
        if !@dogs
            @dogs = Dog.all
        end
    end
    def show
        @dog = Dog.find(params[:id])
        @employees = Employee.employees_for_this_dog(@dog)
    end
    def sort_by
        @dogs = Dog.all
        @dogs = @dogs.sort_by {|dog| dog.employees.count}
        render :index
    end
    def sorted_results
        @dogs = Dog.all
        @dogs.sort_by {|dog| dog.employees.count}
        redirect_to dogs_path
    end
end
