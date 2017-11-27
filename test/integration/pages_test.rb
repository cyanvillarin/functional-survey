require 'test_helper'

class PagesTest < ActionDispatch::IntegrationTest
	test "should get root" do
		get root_url
		assert_response :success
	end

	test "should get surveys" do
		get surveys_url
		assert_response :success
	end

	test "should get new surveys" do
		get new_survey_url
		assert_response :success
	end

	test "should get thank" do
		get thank_url
		assert_response :success
	end

  # test "the truth" do
  #   assert true
  # end
end
