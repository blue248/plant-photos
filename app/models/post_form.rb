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
    #一度タグの紐付けを消す
    post.post_tag_relations.destroy_all

    #paramsの中のタグの情報を削除。同時に、返り値としてタグの情報を変数に代入
    tag_name = params.delete(:tag_name)

    #もしタグの情報がすでに保存されていればインスタンスを取得、無ければインスタンスを新規作成
    tag = Tag.where(tag_name: tag_name).first_or_initialize if tag_name.present?

    #タグを保存
    tag.save if tag_name.present?
    post.update(params)
    PostTagRelation.create(post_id: post.id, tag_id: tag.id) if tag_name.present?
  end
end