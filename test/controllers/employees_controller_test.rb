require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do 
    assert_difference"Employee.count", 1 do
      post "/employees.json", params: {first_name: "test", last_name: "test", email: "test@hotmail.com", phone: "30958340", title: "test", department_id:1}
      assert_response 200
    end
    assert_difference "Employee.count", 0 do
      post "/employees.json", params: {first_name: "test", last_name: "test", email: "test@hotmail.com", phone: "30958340", title: "test", department_id:1}
      assert_response 422
    end
end
