module Invoiced
  class Invoice
    include Invoiced::Model

    attribute :customer,                        Customer
    attribute :name,                            String
    attribute :currency,                        Money::Currency
    attribute :estimate,                        Estimate
    attribute :subscription,                    String
    attribute :theme,                           Theme
    attribute :late_payment_reminders_disabled, Boolean
    attribute :number,                          String
    attribute :date,                            DateTime
    attribute :due_date,                        DateTime
    attribute :purchase_order,                  String
    attribute :items,                           Array[Item]
    attribute :terms,                           String
    attribute :notes,                           String
    attribute :subtotal,                        Money
    attribute :discounts,                       Array[Discount]
    attribute :taxes,                           Array[Tax]
    attribute :shipping,                        Array
    attribute :total,                           Money
    attribute :amount_paid,                     Money
    attribute :balance,                         Money
    attribute :draft,                           Boolean
    attribute :sent,                            Boolean
    attribute :closed,                          Boolean
    attribute :paid,                            Boolean
    attribute :url,                             URL
    attribute :pdf_url,                         URL
    attribute :status,                          String
    attribute :next_chase_on,                   DateTime
    attribute :attempt_count,                   Integer
    attribute :next_payment_attempt,            DateTime
    attribute :stripe_invoice,                  String
    attribute :disabled_payment_methods,        Hash

    class << self
      def root
        "invoice"
      end

      def path
        "invoices"
      end

      def expand
        "customer,estimate,theme"
      end
    end
  end
end
