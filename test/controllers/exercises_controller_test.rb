require "test_helper"

class ExercisesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/exercises.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Exercise.count, data.length
  end

  test "create" do
    assert_difference "Exercise.count", 1 do
      post "/exercises.json", params: { title: "test", description: "test", image_url: "test.jpg", video_url: "test.mp4", routine_id: 1 }
      assert_response 200
    end
  end

  test "show" do
    get "/exercises/#{Exercise.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "description", "image_url", "video_url", "routine_id", "created_at", "updated_at"], data.keys
  end
end
