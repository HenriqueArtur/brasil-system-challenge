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
            const = firstHalf?
            
            half = (str.length/2).floor - 1

            init = const * (half+1)
            final = (const == 0 ? half : str.length - 1 )

            puts "[half=#{half}, init=#{init}, final=#{final}, length=#{str.length}, const=#{const}]"
            return str[init..final]
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

    private
        def firstHalf?
            puts 'Você deseja imprimir a primeira metade da String ou a segunda?'
            puts '[1] - Primeira metade'
            puts '[2] - Segunda metade'
            response = gets.chomp

            if response == '1' || response == '2'
                return (response == '1' ? 0 : 1)
            else
                puts 'Resposta inválida.'
                puts "\n"
                firstHalf?
            end
        end
end