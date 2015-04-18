class Problem < ActiveRecord::Base
  has_many :questions
  has_many :problem_parts
  has_many :assignments, through: :questions
end
