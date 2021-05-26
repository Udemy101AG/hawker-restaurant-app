require_relative './menu'
require_relative './order'

class Hawker
    attr_reader :name, :menu
    def intialize(name, menu_items)
        @name = name
        @menu = Menu.new
        populate_menu(menu_items)
    end

    def populate_menu(menu_items)
        menu_items.each do | name, price|
            @menu.add_item(name,price)
        end
    end

    def add_to_order(item,quantity)
        @order.add_item(item,quantity)
    end

    def get_order
        return @order
    end

    def welcome
        puts "Welcome to #{@name}"
    
    def print_menu
        @menu.display
    end
end

        name = "My Hawker"
        menu_items = {Penang Char Kueh Tiaw: 12.00)
        hawker = hawker.new(name, menu_items)
        hawker.welcome
        hawker.print_menu