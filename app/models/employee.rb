class Employee < ApplicationRecord
validates :title, :alias, {presence: true, uniqueness: true}
belongs_to :dog
end
