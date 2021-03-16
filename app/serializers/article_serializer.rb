class ArticleSerializer < ActiveModel::Serializer

  attributes :title, :image_url, :content, :created_at

  def title
    object.a_title
  end

  def image_url
    object.a_image_url
  end

  def content
    object.a_content
  end

end