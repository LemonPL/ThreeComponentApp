require 'sidekiq'

class Test
  def perform
    HardWorker.perform_async('bob', 5   )
  end
end

Crono.perform(Test).every 5.seconds
