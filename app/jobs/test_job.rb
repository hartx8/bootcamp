class TestJob < ApplicationJob
  queue_as :default

  def perform(*args)
    make_log("perform done")
  end
end
