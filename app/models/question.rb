class Question < ApplicationRecord
  belongs_to :asker, class_name: :User
  has_many :answers
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
end
