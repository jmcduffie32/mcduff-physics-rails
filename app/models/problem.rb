class Problem < ActiveRecord::Base
  has_many :questions
  has_many :assignments, through: :questions
end
