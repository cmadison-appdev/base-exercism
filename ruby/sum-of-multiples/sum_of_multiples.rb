=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end


class SumOfMultiples
    def initialize(*args)
        @divs = args
    end

    def to(upLim)
        #return 0 if @divs.empty?
        (1...upLim).select{|i| @divs.any?{|v| (i % v).zero? } }.sum
    end
end

