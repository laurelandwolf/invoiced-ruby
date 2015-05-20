module Invoiced
  class PaymentMethod
    include Invoiced::Model

    attribute :created_at,  DateTime
    attribute :updated_at,  DateTime
    attribute :method,      String
    attribute :enabled,     Boolean
    attribute :meta,        String

    class << self
      def root
        "payment_method"
      end

      def path
        "payment_methods"
      end
    end
  end
end
