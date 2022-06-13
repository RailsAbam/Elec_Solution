require "test_helper"

class ElecSolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elec_solution = elec_solutions(:one)
  end

  test "should get index" do
    get elec_solutions_url
    assert_response :success
  end

  test "should get new" do
    get new_elec_solution_url
    assert_response :success
  end

  test "should create elec_solution" do
    assert_difference("ElecSolution.count") do
      post elec_solutions_url, params: { elec_solution: { email: @elec_solution.email, first_name: @elec_solution.first_name, last_name: @elec_solution.last_name, phone: @elec_solution.phone, state: @elec_solution.state } }
    end

    assert_redirected_to elec_solution_url(ElecSolution.last)
  end

  test "should show elec_solution" do
    get elec_solution_url(@elec_solution)
    assert_response :success
  end

  test "should get edit" do
    get edit_elec_solution_url(@elec_solution)
    assert_response :success
  end

  test "should update elec_solution" do
    patch elec_solution_url(@elec_solution), params: { elec_solution: { email: @elec_solution.email, first_name: @elec_solution.first_name, last_name: @elec_solution.last_name, phone: @elec_solution.phone, state: @elec_solution.state } }
    assert_redirected_to elec_solution_url(@elec_solution)
  end

  test "should destroy elec_solution" do
    assert_difference("ElecSolution.count", -1) do
      delete elec_solution_url(@elec_solution)
    end

    assert_redirected_to elec_solutions_url
  end
end
