class Array
    def my_uniq
        hash = Hash.new(0)

        self.each do |ele|
            hash[ele] = true
        end

        hash.keys
    end

    def two_sum
        pairs = []

        self.each_with_index do |ele, i|
            self.each_with_index do |ele2, j|
                if j > i && ele + ele2 == 0
                    pairs << [i, j]
                end
            end
        end

        pairs
    end


end



