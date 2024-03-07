class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
        render :index
    end
    def show
        @employee = Employee.find_by(id: params[:id])
        render :show
    end
end
