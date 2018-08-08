class Trail < ApplicationRecord
    belongs_to :user
    belongs_to :parks


    mount_uploader :image, ImageUploader
    validates_presence_of :name, :distance, :date#, :image
end
