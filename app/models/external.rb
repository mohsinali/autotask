class External < ApplicationRecord
    belongs_to :organization
    has_one :call_testing , inverse_of: :external
    accepts_nested_attributes_for :call_testing, reject_if: :all_blank, allow_destroy: true
  	has_many :comments, as: :commentable
end
