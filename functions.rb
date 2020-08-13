require 'date'

def setName(errMsg)
    name = gets.chomp
    if name =~ /^[a-zA-Z\s]+$/
        return name
    else
        puts errMsg
        getName(errMsg)
    end
end

def setBirth(errMsg)
    birth = gets
    if birth =~ /^(?:0?[1-9]|[1-2]\d|3[01])(\/)(?:0?[1-9]|1[0-2])(\/)\d{4}$/
        date = Date.strptime(birth, '%d/%m/%Y')
        return date
    else
        puts errMsg
        getBirth(errMsg)
    end
end

def pwr3Age(age)
    if age.is_a? Date
        return ((((Date.today - age )/ 365).floor) ** 3)
    else
        puts 'Data nao válida!'
    end
end

def srtReverse(str, errMsg)
    if str.is_a? String
        return str.reverse
    else
        puts errMsg
        newStr = gets.chomp
        srtReverse(newStr, errMsg)
    end
end

def srtHalf(str, errMsg)
    if str.is_a? String
        return str[0..(str.length/2-1).floor]
    else
        puts errMsg
        newStr = gets.chomp
        srtHalf(newStr, errMsg)
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