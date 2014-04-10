class Post < ActiveRecord::Base
  has_many :comments
  validates :title, :content, presence: :true

  has_attached_file :asset, :styles => { :main => "600x600>", :thumb => "100x100!" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
end
