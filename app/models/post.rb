class Post < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :category, optional: true, foreign_key: :category_id
    belongs_to :prefecture, optional: true, foreign_key: :prefecture_id
    
    validate :add_error_sample

    def add_error_sample
    
        if title.empty? and content.empty? then
            errors[:title] << "を入力してください！"
            errors[:content] << "を入力してください！"
    
        elsif title.empty? then
            errors[:title] << "を入力してください！"
  
        elsif content.empty? then
            errors[:content] << "を入力してください！"

        end

    end


    def self.search_w(search)
        if search
            Post.where(['content LIKE ? OR title LIKE ?', "%#{search}%","%#{search}%"]).order(id: :desc)
        else
            Post.all.order(id: :desc)
        end
    end


end
