module Invoiced
  class Transaction
    include Invoiced::Model

    attribute :created_at,        DateTime
    attribute :updated_at,        DateTime
    attribute :id,                Integer
    attribute :customer,          Customer
    attribute :invoice,           Invoice
    attribute :theme,             Theme
    attribute :date,              DateTime
    attribute :transaction_type,  String
    attribute :method,            String
    attribute :status,            String
    attribute :gateway,           String
    attribute :gateway_id,        String
    attribute :currency,          Money::Currency
    attribute :amount,            Money
    attribute :fee,               Money
    attribute :net,               Money
    attribute :notes,             String
    attribute :sent,              Boolean
    attribute :pdf_url,           URL

    class << self
      def root
        "transaction"
      end

      def path
        "transactions"
      end

      def expand
        "customer,invoice,theme"
      end
    end
  end
end
