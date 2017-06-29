require 'test_helper'

class ExampleControllerTest < ActionDispatch::IntegrationTest
  test "POST parses msgpack params and responds with JSON" do
    post example_path(format: :json),
         params: {content: "Hello world!"}.to_msgpack,
         headers: { "Content-Type" => "application/msgpack" }

    res = ActiveSupport::JSON.decode(@response.body)
    assert_equal "Hello world!", res["content"]
  end
end
