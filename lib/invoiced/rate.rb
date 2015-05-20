module Invoiced
  class Rate
    include Invoiced::Model

    attribute :created_at,  DateTime
    attribute :updated_at,  DateTime
    attribute :id,          Integer
    attribute :type,        String
    attribute :name,        String
    attribute :number,      String
    attribute :is_percent,  Boolean
    attribute :value,       Money
    attribute :archived,    Boolean

    class << self
      def root
        "rate"
      end

      def path
        "rates"
      end
    end
  end
end
