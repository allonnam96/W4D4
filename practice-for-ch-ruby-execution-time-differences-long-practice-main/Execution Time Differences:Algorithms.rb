list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list)
    min = list[0]
    list.each do |ele1|
        list.each do |ele2|
    # min = ele1
    
            # next if ele1 == ele2
            # min = ele1 if ele1 < min
            # if ele1 > ele2
            #     min = ele2

            # end
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
    
p my_min(list)  # =>  -5
p my_min2(list)  # =>  -5

