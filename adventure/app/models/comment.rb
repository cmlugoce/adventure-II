class Comment < ApplicationRecord

    belongs_to :user
    belongs_to :park

    validates :content, presence: true
end
