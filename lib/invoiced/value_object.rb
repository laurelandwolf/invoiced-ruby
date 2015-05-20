module Invoiced
  module ValueObject
    def self.included(receiver)
      receiver.send :include, ::Virtus.value_object
    end
  end
end
