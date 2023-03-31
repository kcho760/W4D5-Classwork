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