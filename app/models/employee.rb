class Employee < ApplicationRecord
  validates :title, :alias, {presence: true, uniqueness: true}
  belongs_to :dog

  def dog_name
    dog = Dog.find(self.dog_id)
    dog.name
  end
end
