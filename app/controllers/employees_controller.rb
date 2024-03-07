class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
        render :index
    end
end
