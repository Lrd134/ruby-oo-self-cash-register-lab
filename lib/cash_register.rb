require 'pry'
class CashRegister
    attr_accessor :total
    attr_reader :items_in_register, :discount, :quantity
    def initialize(discount_pcnt = 1)
        @total = 0
        @discount = discount_pcnt   
        @items_in_register = []
        
    end
    def add_item(items_in_cart, price, quantity = 1)
        @total += price * quantity
        @price = price
        @quantity = quantity
        quantity.times do
            @items_in_register << items_in_cart
        
        end
    end
    def apply_discount
        if total > 1
                
            @total -= @total * (@discount/100.0)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    def items
        items_in_register
    end
    def void_last_transaction
        quantity.times do
            @items_in_register.pop
        end
        if items_in_register.empty?
            @total=0.0
        else
            @total = @total - @price

        end
    end

end
