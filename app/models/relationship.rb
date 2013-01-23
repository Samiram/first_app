class Relationship < ActiveRecord::Base
  attr_accessible :followed_id
  belongs_to :followed, :class_name => "User"
  belongs_to :follower, :class_name => "User"

  validates :followed_id, :presence => true
  validates :follower_id, :presence => true

  has_many :microposts, :dependent => :destroy
  has_many :relationships, :foreign_key => "follower_id",
                           :dependent => :destroy

  has_many :following, :through => :relationships, :source => :followed
  
end
