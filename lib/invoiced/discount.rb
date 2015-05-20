module Invoiced
  class Discount
    include Invoiced::ValueObject

    values do
      attribute :id,      Integer
      attribute :amount,  Money
      attribute :rate,    Rate
    end
  end
end
