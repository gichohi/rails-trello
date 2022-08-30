class List < ApplicationRecord
    validates :id, presence: true
    validates :name, presence: true
end
