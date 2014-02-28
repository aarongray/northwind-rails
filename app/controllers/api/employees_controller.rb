class Api::EmployeesController < ApplicationController

  # GET /api/employees
  def index
    @employees = Employee.all
    render :json => @employees
  end

  # GET /api/employees/:id
  def show
    @employee = Employee.find(params[:id])
    render :json => @employee
  end

end
