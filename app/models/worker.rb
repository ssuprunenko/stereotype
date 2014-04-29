class Worker < ActiveRecord::Base
  belongs_to :company

  validates :name, presence: true
  validates :age, numericality: true
  validates :position, presence: true
end
