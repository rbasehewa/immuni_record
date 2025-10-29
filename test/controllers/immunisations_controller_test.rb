require "test_helper"

class ImmunisationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @immunisation = immunisations(:one)
  end

  test "should get index" do
    get immunisations_url
    assert_response :success
  end

  test "should get new" do
    get new_immunisation_url
    assert_response :success
  end

  test "should create immunisation" do
    assert_difference("Immunisation.count") do
      post immunisations_url, params: { immunisation: { administered_by: @immunisation.administered_by, administered_on: @immunisation.administered_on, batch_number: @immunisation.batch_number, next_due_date: @immunisation.next_due_date, patient_id: @immunisation.patient_id, vaccine_id: @immunisation.vaccine_id } }
    end

    assert_redirected_to immunisation_url(Immunisation.last)
  end

  test "should show immunisation" do
    get immunisation_url(@immunisation)
    assert_response :success
  end

  test "should get edit" do
    get edit_immunisation_url(@immunisation)
    assert_response :success
  end

  test "should update immunisation" do
    patch immunisation_url(@immunisation), params: { immunisation: { administered_by: @immunisation.administered_by, administered_on: @immunisation.administered_on, batch_number: @immunisation.batch_number, next_due_date: @immunisation.next_due_date, patient_id: @immunisation.patient_id, vaccine_id: @immunisation.vaccine_id } }
    assert_redirected_to immunisation_url(@immunisation)
  end

  test "should destroy immunisation" do
    assert_difference("Immunisation.count", -1) do
      delete immunisation_url(@immunisation)
    end

    assert_redirected_to immunisations_url
  end
end
