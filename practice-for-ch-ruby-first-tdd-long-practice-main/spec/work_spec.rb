require_relative "../lib/work"

describe "#my_uniq" do
    context "when given an array" do
        subject(:arr) {[1,1,2,2,3,3]}
        it "selects unique elements" do
            expect(arr.my_uniq).to eq([1,2,3])
        end
    end
end

describe "#two_sum" do
    context "when given an array" do
        subject(:arr) {[-1, 0, 2, -2, 1]}
        it "returns an array of pairs whose sum is zero" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
            expect(arr.two_sum).to_not eq([[4, 0], [3, 2]])
        end
    end
end

describe "#my_transpose" do
    context "When given a matrix" do
        subject(:matrix) {[
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
          ]}
        it "returns a matrix with row-column swapped indicies" do
            expect(matrix.my_transpose).to eq [
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
              ]
        end
    end
end

describe "#stock_picker" do
    context "When given an array of stock prices" do
        subject(:prices) {[6,2,1,8,0,5,1,9,4,3,7,9]}
        it "will return the most profitable buy and sell days" do #indicies
            expect(prices.stock_picker).to eq [5,8]
        end
    end
end
