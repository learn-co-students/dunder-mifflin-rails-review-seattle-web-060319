class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, uniqueness: true
    validates :title, uniqueness: true
    def full_name
        self.first_name + " " + self.last_name
    end
    def self.employees_for_this_dog(dog_object)
        self.all.select do |employee|
            employee.dog_id == dog_object.id
        end
    end
end
