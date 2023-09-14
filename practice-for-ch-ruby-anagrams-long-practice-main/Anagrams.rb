require "byebug"
def first_anagram?(str1,str2)
    possible_anagram = str1.split('')
    all_anagrams = possible_anagram.permutation(str1.length).to_a
    # debugger
    all_anagrams.include?(str2.split(''))

end

def second_anagram?(str1, str2)
    
end

def third_anagram?(str1, str2)

end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true