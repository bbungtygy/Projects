class Post < ActiveRecord::Base
  has_many :comments

  has_attached_file :asset, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
end
