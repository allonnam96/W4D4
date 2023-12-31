require "byebug"

def bad_two_sum?(arr, target_sum)
    pairs = []
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            pairs << [arr[i],arr[j]].sum
        end
    end
    pairs.include?(target_sum)
end

arr = [0, 1, 5, 7]

def okay_two_sum?(arr, target_sum)
    sorted_arr = arr.sort

        sorted_arr.each_with_index do |num,i|
            # debugger
            remainder = target_sum - num 
            new_array = sorted_arr[0...i] + sorted_arr[i+1..-1]
           result = new_array.bsearch{|x| x == remainder}
           return true if result != nil
           
        end
        false
end


# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum?(arr, target_sum)
    hash = Hash.new{|h,k|  h[k] = true}

    arr.each do |num|
        hash[num] 
    end 
    
    hash.each_key do |key|
        remainder = target_sum - key

        if key == remainder 
            break
        end 

        result = hash.has_key?(remainder)
        return true if result == true 
    end 
    false
end 


arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false








