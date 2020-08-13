require_relative './classes/Controller'

controller = Controller.instance

while true
    controller.options
    opt = gets.chomp
    controller.chooseOption(opt)
    controller.continue?
end
