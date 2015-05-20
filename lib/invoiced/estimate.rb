module Invoiced
  class Estimate
    include Invoiced::Model

    attribute :created_at,      DateTime
    attribute :updated_at,      DateTime
    attribute :id,              Integer
    attribute :name,            String
    attribute :customer,        Customer
    attribute :currency,        Money::Currency
    attribute :theme,           Theme
    attribute :number,          String
    attribute :date,            DateTime
    attribute :purchase_order,  String
    attribute :items,           Array[Item]
    attribute :terms,           String
    attribute :notes,           String
    attribute :subtotal,        Money
    attribute :discounts,       Array[Discount]
    attribute :taxes,           Array[Tax]
    attribute :shipping,        Array
    attribute :total,           Money
    attribute :draft,           Boolean
    attribute :sent,            Boolean
    attribute :closed,          Boolean
    attribute :approved,        String
    attribute :url,             URL
    attribute :pdf_url,         URL
    attribute :status,          String

    class << self
      def root
        "estimate"
      end

      def path
        "estimates"
      end

      def expand
        "customer"
      end
    end
  end
end
