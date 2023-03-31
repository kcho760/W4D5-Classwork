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

    def my_transpose
        new_matrix = []
        idx = 0
        until new_matrix.length == self.length
            row = []
            self.each do |matrix|
                row << matrix[idx]
            end
            new_matrix << row
            idx+=1
        end
        new_matrix
    end

    def stock_picker
        biggest_profit = 0
        day_pair = []

        self.each_with_index do |ele,idx|
            self.each_with_index do|ele2, idx2|
                if idx2 > idx
                    current_profit = ele2 - ele
                    if current_profit > biggest_profit
                        biggest_profit = current_profit 
                        day_pair = [idx+1, idx2+1]
                    end
                end
            end
        end
        day_pair
    end

    
end



