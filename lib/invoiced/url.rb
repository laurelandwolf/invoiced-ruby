module Invoiced
  class URL < Invoiced::Attribute
    def coerce(value)
      URI(value)
    end
  end
end
