class PostForm
  include ActiveModel::Model
  
  attr_accessor :content, :image, :user_id

  with_options presence: true do
    validates :content
    validates :image
    validates :user_id
  end

  def save
    Post.create(content: content, image: image, user_id: user_id)
  end
end