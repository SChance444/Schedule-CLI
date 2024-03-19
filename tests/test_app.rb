require
require_relative
class ScheduleApp
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end
End


require 'minitest/autorun'
require_relative 'schedule_app' # schedule_app.rb contains the ScheduleApp class

class TestSchedule < MiniTest::Test
  def setup
    @schedule = ScheduleApp.new
  end

  def test_add_task
    @schedule.add_task("Task")
    assert_equal "Task", @schedule.tasks.first
  end

  def test_add_multiple_task
    @schedule.add_task("Task 1")
    @schedule.add_task("Task 2")
    assert_equal ["Task 1", "Task 2"], @schedule.tasks
  end
end
