=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

class Triplet

    def initialize(*vals)
        @vals = vals
        @sum = vals.sum
        @prod = vals.reduce(:*)
    end

    def pythagorean?
        @vals.take(2).reduce(0) {|a, b| a + b ** 2} == @vals.last ** 2
    end

    def self.where(mn: 1, mx:, sum: nil)
        (mn..mx)
        .to_a
        .combination(3)
        .map {|t| Triplet.new(*t)}
        .select {|t| t.pythagorean? && (sum.nil? || t.sum == sum)}
    end
end