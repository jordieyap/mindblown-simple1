require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:a1)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { name: @task.name, priority: @task.priority, status: @task.status }
    end

    assert_response 201
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: { name: @task.name, priority: @task.priority, status: @task.status }
    assert_response 204
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_response 204
  end
end
