def caeser_cipher str, factor

    new_string = []
    lowercase = 97..122
    uppercase = 65..90

    str.split(/(?!^)/).each do |i|
        calc = i.ord + factor
        if i.match(/\w/)
            if lowercase.include? i.ord
                if lowercase.include? calc
                    new_string << calc.chr
                else
                    new_string << ((calc % 122) + 97).chr
                end
            elsif uppercase.include? i.ord
                if uppercase.include? calc
                    new_string << calc.chr
                else
                    new_string << ((calc % 90) + 65).chr
                end
            end
        else
            new_string << i
        end
    end
    return new_string.join
end

puts caeser_cipher "Tom", 2
puts caeser_cipher "What a string!", 5
puts caeser_cipher "HapProy TwenTy", 12
