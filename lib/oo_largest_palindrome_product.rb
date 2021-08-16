# Implement your object-oriented solution here!
class LargestPalindromeProduct
    
    @@palindromes = []

    def initialize
    end

    def answer
        numOfDigits = 3 #this could be come an argument for the answer so the class&method can be used for an digit numbers
        first = second = reset = 1 * 10**(numOfDigits - 1)
        final = first * 10
        
        while first < final
            while second < final
            product = (first * second).to_s
            if product == product.reverse
                @@palindromes.push(product.to_i)
            end
            second += 1
            end
            first += 1
            second = first
        end
        
        @@palindromes.max
    end
end