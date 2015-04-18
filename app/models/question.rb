class Question < ActiveRecord::Base
  belongs_to :problem
  belongs_to :assignment
end
