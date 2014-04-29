class WorkerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :position, :company_title

  def company_title
    object.company.title
  end
end
