require_relative 'User'
require_relative 'Utils'
require 'singleton'

class Controller
    # Singleton Pattern   
    include Singleton
    def initialize(user = User.new, utils = Utils.new)
        @user = user
        @utils = utils
    end

    # Methods
    def options
        puts "[0] - Fazer teste completo"
        puts "[1] - Mostra nome Completo"
        puts "[2] - Mostra data de nascimento"
        puts "[3] - Mudar nome"
        puts "[4] - Mudar nascimento"
        puts "[5] - Mostrar o cubo da idade"
        puts "[6] - Somar dígitos da data de nascimento"
        puts "[7] - Inverter uma String"
        puts "[8] - Mostra String pela metade"
        puts "[9] - Fechar aplicação"
        puts "\n"
        puts "Escolha uma Opção:"
    end

    def chooseOption(opt)
        case opt
        when '0'
            completTest
        when '1'
            showName
        when '2'
            showBirth
        when '3'
            changeName
        when '4'
            changeBirth
        when '5'
            showPwr3Birth
        when '6'
            showBirthSum
        when '7'
            showStrReverse
        when '8'
            showStrHalf
        when '9'
            puts 'Obrigado e até logo!'
            exit
        else
            puts "\n"
            puts "----------------------------------------"
            puts 'Essa opção é invalida. Por favor escolher uma opção a baixo.'
            puts "\n"
            options
            chooseOption(opt)
        end
    end

    def completTest
        puts "\n"
        puts "----------------------------------------"
        puts '[0] - Fazer teste completo'
        showName
        showBirth
        changeName
        changeBirth
        showPwr3Birth
        showBirthSum
        showStrReverse
        showStrHalf
        puts '...Teste finalizado'
        puts "----------------------------------------"
        puts "\n"
    end

    def showName
        puts "\n"
        puts "----------------------------------------"
        puts '[1] - Mostra nome Completo'
        puts "O nome completo do usuário é: #{@user.getName}."
        puts "----------------------------------------"
    end

    def showBirth
        puts "\n"
        puts "----------------------------------------"
        puts '[2] - Mostra data de nascimento'
        puts "A data de Nascimento do usuário é: #{@user.getBirth.strftime('%d/%m/%Y')}."
        puts "----------------------------------------"
    end

    def changeName
        puts "\n"
        puts "----------------------------------------"
        puts '[3] - Mudar nome'
        puts "Digite o novo nome de usário:"
        @user.setName
        puts "O novo nome de usuário é: #{@user.getName}"
        puts "----------------------------------------"
    end

    def changeBirth
        puts "\n"
        puts "----------------------------------------"
        puts '[4] - Mudar nascimento'
        puts "Digite a data de nascimento do usuário:"
        @user.setBirth
        puts "A nova data de nascimento do usuário é: #{@user.getBirth.strftime('%d/%m/%Y')}"
        puts "----------------------------------------"
    end

    def showPwr3Birth
        puts "\n"
        puts "----------------------------------------"
        puts '[5] - Mostrar o cubo da idade'
        puts "O cubo da idade do usuário é: #{@utils.pwr3Age(@user.getBirth)}."
        puts "----------------------------------------"
    end

    def showBirthSum
        puts "\n"
        puts "----------------------------------------"
        puts '[6] - Somar dígitos da data de nascimento'
        puts "A soma dos dígitos da data de nascimento do usuário é: #{@utils.dateSum(@user.getBirth)}."
        puts "----------------------------------------"
    end

    def showStrReverse
        puts "\n"
        puts "----------------------------------------"
        puts '[7] - Inverter uma String'
        puts "Digite uma String para ser invertida:"
        str = gets.chomp
        puts "A String \"#{str}\" invertida é: \"#{@utils.strReverse(str)}\""
        puts "----------------------------------------"
    end

    def showStrHalf
        puts "\n"
        puts "----------------------------------------"
        puts '[8] - Mostra String pela metade'
        puts "Digite uma String para ser exibida pela metade:"
        str = gets.chomp
        puts "A String \"#{str}\" invertida é: \"#{@utils.srtHalf(str)}\""
        puts "----------------------------------------"
    end

    def continue?
        puts "\n"
        puts "----------------------------------------"
        puts 'Deseja continuar?[s/n]'
        str = gets.chomp
        if str == 's' || str ==  'S'
            puts "----------------------------------------"
        else
            if str == 'n' || str ==  'N'
                puts "\n"
                puts 'Obrigado e até logo!'
                puts "----------------------------------------"
                exit
            else
                puts 'resposta inválida'
                continue?
            end
        end
    end
end