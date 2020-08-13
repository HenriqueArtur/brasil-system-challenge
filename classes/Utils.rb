require 'date'

class Utils
    def strReverse(str)
        if str.is_a? String
            return str.reverse
        else
            puts "Parametro inválido.\nPasse uma string como parametro"
            newStr = gets.chomp
            srtReverse(newStr)
        end
    end
    
    def srtHalf(str)
        if str.is_a? String
            return str[0..(str.length/2-1).floor]
        else
            puts "Parametro inválido.\nPasse uma string como parametro"
            newStr = gets.chomp
            srtHalf(newStr)
        end
    end
    
    def pwr3Age(age)
        if age.is_a? Date
            return ((((Date.today - age )/ 365).floor) ** 3)
        else
            puts 'Data nao válida!'
        end
    end

    def dateSum(date)
        if date.is_a? Date
            dateToCount = date.strftime('%d%m%Y').split('')
            value = 0
            
            dateToCount.each do |index|
                value += index.to_i
        end
            return value
        else
            puts 'Data nao válida!'
        end
    end
end