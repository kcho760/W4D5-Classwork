require_relative "../lib/work"

describe "#my_uniq" do
    context "when given an array" do
        subject(:arr) {[1,1,2,2,3,3]}
        it "selects unique elements" do
            expect(arr.my_uniq).to eq([1,2,3])
        end
    end
end