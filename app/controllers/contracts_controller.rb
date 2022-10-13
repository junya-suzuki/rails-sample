class ContractsController < ApplicationController
  def index
    @contracts = ProjectContract.all.eager_load(project: :customer).order(id: "DESC")
    @contract = ProjectContract.new
    @customer = Customer.first
  end

  def create
    @contract = ProjectContract.new(project_contract_params)
    @contract.save
    redirect_to contracts_path
  end

  private
  def project_contract_params
    params.require(:project_contract).permit(:name, :customer_id, :project_id)
  end
end
