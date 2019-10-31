class Category < ApplicationRecord
    has_many :posts, foreign_key: [:id]


end
