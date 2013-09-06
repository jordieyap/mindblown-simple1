require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "should not save task without name" do
    task = Task.new
    assert !task.save
  end

  test "should save with only name" do
    task = Task.new(name: "my name to validate")
    assert task.save
  end

  test "should save without priority" do
    task = Task.new(name: "my name to validate",status:"new")
    assert task.save
    assert task.priority == "low"
    assert task.status == "new"
  end

  test "should save without status - use controller default" do
    task = Task.new(name: "my name to validate",priority: "high")
    assert task.save
    assert task.priority != "low"
    assert task.status == "new"
  end

  test "should save with supplied status(custom) but not priority (default)" do
    task = Task.new(name: "my name to validate",status: "different")
    assert task.save
    assert task.priority == "low"
    assert task.status != "new"
  end

  test "should not save with id, vs name" do
    task = Task.new(id: 10001)
    assert !task.save
  end

  #[Todo][Mock Example - Bug] :: assert the user cannot supply the id ...
  test "should not save with id and name" do
    task = Task.new(id: 10001, name: "i added an id upfront")
    assert !task.save
    
  end
end
