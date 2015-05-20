module Invoiced
  class Customer
    include Invoiced::Model

    attribute :created_at,      DateTime
    attribute :updated_at,      DateTime
    attribute :id,              Integer
    attribute :number,          String
    attribute :name,            String
    attribute :email,           String
    attribute :type,            String
    attribute :attention_to,    String
    attribute :address1,        String
    attribute :address2,        String
    attribute :city,            String
    attribute :state,           String
    attribute :postal_code,     String
    attribute :country,         String
    attribute :tax_id,          String
    attribute :phone,           String
    attribute :other_phone,     String
    attribute :website,         String
    attribute :notes,           String
    attribute :balance,         Money
    attribute :stripe_customer, String

    class << self
      def root
        "customer"
      end

      def path
        "customers"
      end
    end
  end
end
