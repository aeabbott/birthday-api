class Birthday < ApplicationRecord
  belongs_to :user

  validates :born_on, presence: true
  validates :given_name, presence: true
end
