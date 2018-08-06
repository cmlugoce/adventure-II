class Trail < ApplicationRecord
    belongs_to :user
    belongs_to :parks

    validates_presence_of :name, :distance, :date
end
