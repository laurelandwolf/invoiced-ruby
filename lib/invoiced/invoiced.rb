require "virtus"
require "typhoeus"
require "json"
require "money"

require "invoiced/version"

require "invoiced/configuration"
require "invoiced/responder"
require "invoiced/model"
require "invoiced/value_object"
require "invoiced/attribute"
require "invoiced/error"

require "invoiced/money"
require "invoiced/url"
require "invoiced/rate"
require "invoiced/tax"
require "invoiced/customer"
require "invoiced/theme"
require "invoiced/discount"
require "invoiced/item"
require "invoiced/estimate"
require "invoiced/invoice"
require "invoiced/transaction"
require "invoiced/stored_item"
require "invoiced/payment_method"
require "invoiced/template"

module Invoiced
  class << self
    attr_accessor :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      @configuration = Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
