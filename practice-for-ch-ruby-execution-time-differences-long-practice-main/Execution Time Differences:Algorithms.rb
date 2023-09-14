# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list)
    min = list[0]
    list.each do |ele1|
        list.each do |ele2|
            if ele1 < ele2 
                min = ele1 if ele1 < min
            else 
                min = ele2 if ele2 < min
            end
        end
    end
    min
end

def my_min2(list)
    smallest = list[0]
        list.each do |ele|
            if ele < smallest
                smallest = ele
            end
        end
        smallest
end
    
# p my_min(list)  # =>  -5
# p my_min2(list)  # =>  -5

# list = [5, 3, -7]
# list = [2, 3, -6, 7, -6, 7]
list = [-5, -1, -3]

def largest_contiguous_subsum(list)
    holder = []
    (0...list.length).each do |start_idx|
        (start_idx...list.length).each do |end_idx|
            holder << list[start_idx..end_idx]
        end 
    end
    largest = holder.max_by {|array| array.sum} 
    largest.sum
end 

p largest_contiguous_subsum(list)

def largest_contiguous_subsum2(list)
    sum = 0 

    list.each do |ele|
        sum += ele 
        if sum < 0 
            sum = 0 
        end
    end 
    sum

    if list.all? {|ele| ele < 0 }
        return list.max 
    end 

end 

p largest_contiguous_subsum2(list)




