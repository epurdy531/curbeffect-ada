class ContractRequestsController < ApplicationController
  def index
    @contract_requests = ContractRequest.all
  end

  def new
    @contract_request = ContractRequest.new
  end

  def create
    @contract_request = ContractRequest.new(contract_request_params)
    if @contract_request.save
      redirect_to contract_requests_path, notice: "#{@contract_request.organization_name} added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @contract_request = ContractRequest.find(params[:id])
  end

  def update
    @contract_request = ContractRequest.find(params[:id])
    if @contract_request.update(contract_request_params)
      redirect_to contract_requests_path, notice: "#{@contract_request.organization_name} saved."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @contract_request = ContractRequest.find(params[:id])
    @contract_request.destroy
    redirect_to contract_requests_path, notice: "Contract request deleted."
  end

  private

  def contract_request_params
    params.require(:contract_request)
          .permit(:rfp_url, :organization_name, :status, :due_date, :government_type, :notes)
  end
end
