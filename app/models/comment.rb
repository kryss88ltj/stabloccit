class Comment < ActiveRecord::Base
  belongs_to :post

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, presence: true
  # validates :topic, presence: true
  # validates :user, presence: true
end
