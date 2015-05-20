module Invoiced
  class Money < Invoiced::Attribute
    class Currency < Invoiced::Attribute
      def coerce(value)
        ::Money::Currency.new(value)
      end
    end

    def coerce(value)
      ::Money.new(value * 100, "USD")
    end
  end
end
