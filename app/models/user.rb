class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :question
	has_many :answer
	has_many :upvote
    has_many :follower_mappings, class_name: 'Follow', foreign_key: 'followee_id'
    has_many :followee_mappings, class_name: 'Follow', foreign_key: 'follower_id'
    has_many :followers, through: :follower_mappings
    has_many :followees, through: :followee_mappings
end
