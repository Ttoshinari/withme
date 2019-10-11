class Post < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :category, optional: true, foreign_key: :category_id
    belongs_to :prefecture, optional: true, foreign_key: :prefecture_id
    
    validates :title, presence: true
    validates :content, presence: true


    def self.search_w(search)
        if search
            Post.where(['content LIKE ? OR title LIKE ?', "%#{search}%","%#{search}%"]).order(id: :desc)
        else
            Post.all.order(id: :desc)
        end
    end


end
