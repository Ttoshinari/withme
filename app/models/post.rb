class Post < ApplicationRecord

    belongs_to :user, optional: true
    belongs_to :category, optional: true, foreign_key: :category_id
    belongs_to :prefecture, optional: true, foreign_key: :prefecture_id
    
    validate :add_error_sample
    validates :title, length: { maximum: 20 }
    validates :content, length: { maximum: 200 }
    validates :from_age, presence: { message: 'を選択してください' }
    validates :to_age, presence: { message: 'を選択してください' }

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
