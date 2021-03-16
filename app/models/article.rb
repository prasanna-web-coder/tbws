class Article < ApplicationRecord

  belongs_to :user, foreign_key: 'u_id'

  validates_presence_of :user, message: 'User is required'
  validates_presence_of :a_title, message: 'Article title is required'
  validates_presence_of :a_content, message: 'Article content is required'
end