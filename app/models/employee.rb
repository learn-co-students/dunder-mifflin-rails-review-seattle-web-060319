class Employee < ApplicationRecord
    validates :alias, {uniqueness: true}
    validates :title, {presence: true, uniqueness: true}
    belongs_to :dog

    def to_s
        self.first_name + " " + self.last_name
    end
end
