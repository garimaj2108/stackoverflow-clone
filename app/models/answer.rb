class Answer < ApplicationRecord
  belongs_to :answerer, class_name: :User
  belongs_to :question
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
end
