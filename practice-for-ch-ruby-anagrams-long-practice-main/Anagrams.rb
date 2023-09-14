require "byebug"
def first_anagram?(str1,str2)
    possible_anagram = str1.split('')
    all_anagrams = possible_anagram.permutation(str1.length).to_a
    # debugger
    all_anagrams.include?(str2.split(''))

end

def second_anagram?(str1, str2)
    counter1 = Hash.new(0)
    counter2 = Hash.new(0)

    str1.each_char do |char|
        counter[char] += 1
    end
    str2.each_char do |char|
        counter2[char] += 1
    end
    counter1 == counter2
end

def third_anagram?(str1, str2)

    word1 = str1.split('').sort
    word2 = str2.split('').sort
debugger
    word1 == word2
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true