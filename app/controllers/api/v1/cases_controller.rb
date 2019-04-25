class Api::V1::CasesController < ApplicationController
  before_action :find_case, only: [:update]
  def index
    @cases = Case.all
    render json: @cases
  end

  def update
    @case.update(case_params)
    if @case.save
      render json: @case, status: :accepted
    else
      render json: { errors: @case.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def case_params
    params.permit()
  end

  def find_case
    @case = Case.find(params[:id])
  end
end
