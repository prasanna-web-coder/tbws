class ArticleSerializer < ActiveModel::Serializer

  attributes :title, :image_url, :content, :created_at, :article_id

  def title
    object.a_title
  end

  def image_url
    object.a_image_url
  end

  def content
    object.a_content
  end

  def article_id
    object.id
  end

end