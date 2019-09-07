class Post < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :category, optional: true, foreign_key: :category_id
    belongs_to :prefecture, optional: true, foreign_key: :prefecture_id


    
end
