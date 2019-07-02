class DogsController < ApplicationController

    def index
        @dogs = Dog.all
        
        #sorting the dogs by the number of employees it has
        arr = @dogs.map do |dog|
            [dog, dog.employees.count]
        end
        @sorted_dogs = arr.sort_by{|dog,count| count}

    end

    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end

end
