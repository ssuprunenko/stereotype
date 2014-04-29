class CompanySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :location

  has_many :workers
end
