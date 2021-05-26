class order
    def intialize
        @order_items = Hash.new(0)
    end
    def add_item(name, quantity)
        @order_items[name] += quantity
    end
    def get_items
        return @order_items
    end
end