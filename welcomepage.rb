def welcome
    system("clear");
    

require_relative '../menu_item'
require_relative '../menu'
require_relative '../order'
require_relative '../restaurant'

describe MenuItem do
    it 'should return the price of the food item' do
        name = "Penang Char Kueh Tiaw"
        price = 12.00
        menu_item = MenuItem.new(name,price)
        expect(menu_item.price).to eq(price)
        end
    it 'should return the name of the food item' do
        name = "Penang Char Kueh Tiaw"
        price = 12.00
        menu_item = MenuItem.new(name,price)
        expect(menu_item.price).to eq(price)
        end
    end

describe Menu do 
    it 'should be able to get an item price' do
        name = "Penang Char Kueh Tiaw"
        price = 12.00
        menu = Menu.new
        menu.add_item(name, price)  
        expect(menu.get_price(name)). to eq(price)
    end
    it 'should be able add an item' do
        name = "Penang Char Kueh Tiaw"
        price = 12.00
        menu = Menu.new
        menu.add_item(name, price)  
        expect(menu.get_items().length).to be(1)
    end
    it 'should update an item quantity' do 
        order = Order.new
        name = "Penang Char Kueh Tiaw"
        quantity = 2 
        quantity_add = 3
        order.add_item(name,quantity)
        order.add_item(name,quantity_add)
        expect(order.get_items().[name]).to be(quantity+quantity_add)
    end 

    it 'should define a welcome method' do
        name = "My Hawker"
        menu_items = {Penang Char Kueh Tiaw: 12.00}
        hawker = hawker.new(name, menu_items)
        expect(hawker.welcome). to eq(nil)

        
end


