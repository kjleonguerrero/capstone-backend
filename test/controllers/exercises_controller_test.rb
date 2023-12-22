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

  test "update" do
    exercise = Exercise.first
    patch "/exercises/#{exercise.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Exercise.count", -1 do
      delete "/exercises/#{Exercise.first.id}.json"
      assert_response 200
    end
  end
end
