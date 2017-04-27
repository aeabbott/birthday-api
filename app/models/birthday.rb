class Birthday < ApplicationRecord
  belongs_to :users

  validates :born_on, presence: true
  validates :given_name, presence: true
end
