require_relative 'src_grabber'
require 'thread'
module JobGrabber
  class Base
    def initialize(sources)
      @sources = sources
    end
    def grab
      jobs = Array.new
      mutex = Mutex.new
      threads = Array.new
      @sources.each do |src|
        threads << Thread.new(src, jobs) do |src, jobs|
          src_jobs = JobGrabber::SrcGrabber.new(src).grab
          mutex.synchronize{jobs += src_jobs}
        end
      end
      threads.each(&:join)
      jobs
    end
  end
end