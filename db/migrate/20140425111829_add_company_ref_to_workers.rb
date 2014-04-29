class AddCompanyRefToWorkers < ActiveRecord::Migration
  def change
    add_reference :workers, :company, index: true
  end
end
