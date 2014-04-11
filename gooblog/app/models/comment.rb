class Comment < ActiveRecord::Base
  belongs_to :post
  validates :commenter, :content, :post_id, presence: :true
end
