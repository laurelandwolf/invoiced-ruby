module Invoiced
  class Item
    include Invoiced::ValueObject

    values do
      attribute :id,          Integer
      attribute :item,        Integer
      attribute :type,        String
      attribute :name,        String
      attribute :description, String
      attribute :quantity,    Integer
      attribute :unit_cost,   Money
      attribute :amount,      Money
      attribute :discounts,   Array[Discount]
      attribute :taxes,       Array
      attribute :shipping,    Array
    end
  end
end
