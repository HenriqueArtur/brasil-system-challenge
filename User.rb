require 'date'

class User
    def initialize(name = 'Henrique Artur Cordeiro Gomes', birth = Date.new(1995, 9, 15))
        @name = name
        @birth = birth
    end
    
    def getName
        return @name 
    end
    
    def getBirth
        return @birth.strftime('%d/%m/%Y')
    end
    
    def setName
        newName = gets.chomp
        if newName =~ /^[a-zA-Z\s]+$/
            @name = newName
        else
            puts "Nome Inválido\nDigite um novo nome:"
            setName()
        end
    end
    
    def setBirth()
        newBirth = gets.chomp
        if newBirth =~ /^(?:0?[1-9]|[1-2]\d|3[01])(\/)(?:0?[1-9]|1[0-2])(\/)\d{4}$/
            date = Date.strptime(newBirth, '%d/%m/%Y')
            @birth = date
        else
            puts "Data inválida\nDigite uma nova data"
            setBirth()
        end
    end
end
