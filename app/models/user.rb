class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :gender, :location, :password_digest, :profile_img_url, :username, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "300x200>" }, :default_url => "/images/:style/missing.png"
  validates :username, presence: true, uniqueness: true
  has_secure_password

  has_many :mission_stories
  has_many :transactions
end
