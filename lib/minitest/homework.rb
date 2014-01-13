require "minitest/homework/version"

module Minitest
  class Homework < Test
    def self.runnable_methods
      methods_matching(/^test_/)
    end
  end
end
