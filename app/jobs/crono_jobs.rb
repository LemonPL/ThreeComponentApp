class TestJob # This is not an Active Job job, but pretty legal Crono job.
  def perform(*args)
    # put you scheduled code here
    # Comments.deleted.clean_up...
  end
end