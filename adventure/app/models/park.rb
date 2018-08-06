class Park < ApplicationRecord

    has_many :users, through: :trails
    has_many :trails 
    has_many :comments
    validates_presence_of :name, :location
end
