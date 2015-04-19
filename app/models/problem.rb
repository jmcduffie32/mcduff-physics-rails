class Problem < ActiveRecord::Base
  has_many :questions
  has_many :problem_parts
  has_many :assignments, through: :questions

  accepts_nested_attributes_for :problem_parts, allow_destroy: true,
    reject_if: lambda {|attributes| attributes['answer'].blank? || attributes['statement'].blank?}
end
