class HellojojJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "hello my first job"
     

  end
end
