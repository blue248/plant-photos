class PostForm
  include ActiveModel::Model
  
  attr_accessor(
    :content, :image, :user_id,
    :id, :created_at, :updated_at,
    :tag_name
  )

  with_options presence: true do
    validates :content
    validates :image
    validates :user_id
  end

  def save
    post = Post.create(content: content, image: image, user_id: user_id)
    tag = Tag.where(tag_name: tag_name).first_or_initialize
    tag.save
    PostTagRelation.create(post_id: post.id, tag_id: tag.id)
  end

  def update(params, post)
    post.update(params)
  end
end