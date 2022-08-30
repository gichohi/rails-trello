class Card < ApplicationRecord
    validates :id, presence: true
    validates :name, presence: true
    validates :idList, presence: true
end
