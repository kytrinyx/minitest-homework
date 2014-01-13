require "minitest/homework/version"

module Minitest
  class Homework < Test
    def self.runnable_methods
      methods_matching(/^test_/)
    end

    def __
      :blank
    end

    def assert_equal(actual, expected)
      if actual == __
        begin
          raise
        rescue => e
          failure = Exception.new("Fill in the blank, then re-run the test.")
          failure.set_backtrace e.backtrace[1..-1]
          raise failure
        end
      else
        super
      end
    end

    def maybe(boolean)
      begin
        raise
      rescue => e
        failure = Exception.new("Replace `maybe` with either `assert` or `refute`, then re-run the test.")
        failure.set_backtrace e.backtrace[1..-1]
        raise failure
      end
    end
  end
end
