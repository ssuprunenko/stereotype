class Company < ActiveRecord::Base
  has_many :workers

  validates :title, presence: true
end
