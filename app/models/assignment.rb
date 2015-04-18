class Assignment < ActiveRecord::Base
  has_many :questions
  has_many :problems, through: :questions
end
