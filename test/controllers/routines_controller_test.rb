require "test_helper"

class RoutinesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/routines.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Routine.count, data.length
  end
end
