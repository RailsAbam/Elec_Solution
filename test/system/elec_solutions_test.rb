require "application_system_test_case"

class ElecSolutionsTest < ApplicationSystemTestCase
  setup do
    @elec_solution = elec_solutions(:one)
  end

  test "visiting the index" do
    visit elec_solutions_url
    assert_selector "h1", text: "Elec solutions"
  end

  test "should create elec solution" do
    visit elec_solutions_url
    click_on "New elec solution"

    fill_in "Email", with: @elec_solution.email
    fill_in "First name", with: @elec_solution.first_name
    fill_in "Last name", with: @elec_solution.last_name
    fill_in "Phone", with: @elec_solution.phone
    fill_in "State", with: @elec_solution.state
    click_on "Create Elec solution"

    assert_text "Elec solution was successfully created"
    click_on "Back"
  end

  test "should update Elec solution" do
    visit elec_solution_url(@elec_solution)
    click_on "Edit this elec solution", match: :first

    fill_in "Email", with: @elec_solution.email
    fill_in "First name", with: @elec_solution.first_name
    fill_in "Last name", with: @elec_solution.last_name
    fill_in "Phone", with: @elec_solution.phone
    fill_in "State", with: @elec_solution.state
    click_on "Update Elec solution"

    assert_text "Elec solution was successfully updated"
    click_on "Back"
  end

  test "should destroy Elec solution" do
    visit elec_solution_url(@elec_solution)
    click_on "Destroy this elec solution", match: :first

    assert_text "Elec solution was successfully destroyed"
  end
end
