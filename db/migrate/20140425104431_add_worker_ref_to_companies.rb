class AddWorkerRefToCompanies < ActiveRecord::Migration
  def change
    add_reference :companies, :worker, index: true
  end
end
