class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  validates :title, presence: true, length: { maximum: 250 }
  validates :comment_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }

  def update_post_counter
    author.increment!(:post_counter)
  end

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end
end
