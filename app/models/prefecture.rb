class Prefecture < ApplicationRecord
    has_many :posts, foreign_key: [:id]
    has_many :users
    belongs_to :area
end
