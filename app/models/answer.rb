class Answer < ActiveRecord::Base
	belongs_to :user
	belongs_to :question
	has_many :upvote

	validates :user_id ,presence:true
	validates :question_id ,presence:true
end
