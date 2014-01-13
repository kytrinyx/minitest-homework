module Minitest
  class SummaryReporter
    def self.be_gentle!
      define_method :aggregated_results do
        passing_assertions + first_failure
      end
    end

    def passing_assertions
      "\n\t%s passing #{pluralized_assertion}.\n" % assertions
    end

    def pluralized_assertion
      assertions == 1 ? 'assertion' : 'assertions'
    end

    def first_failure # :nodoc:
      filtered_results = results.dup
      filtered_results.reject!(&:skipped?) unless options[:verbose]
      filtered_results[0..0].map do |result|
      "\n%s" % [result]
      end.join("\n") + "\n"
    end
  end
end
