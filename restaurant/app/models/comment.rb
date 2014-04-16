class Comment < ActiveRecord::Base
  belongs_to :shop

  validates :commenter, :content, presence: :true
end
