class Api::EmployeesController < ApplicationController

  # GET /api/employees
  def index
    @employees = Employee.all
    render :json => @employees
  end

end
