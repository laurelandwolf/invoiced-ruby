module Invoiced
  class StoredItem
    include Invoiced::Model

    attribute :created_at,  DateTime
    attribute :updated_at,  DateTime
    attribute :id,          Integer
    attribute :type,        String
    attribute :name,        String
    attribute :number,      String
    attribute :description, String
    attribute :unit_cost,   Money
    attribute :discounts,   Array[Discount]
    attribute :taxes,       Array[Tax]
    attribute :shipping,    Array
    attribute :archived,    Boolean

    class << self
      def root
        "stored_item"
      end

      def path
        "stored_items"
      end
    end
  end
end
