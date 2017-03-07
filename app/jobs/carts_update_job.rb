class CartsUpdateJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    puts "Job triggered, check logs"
  end
end
