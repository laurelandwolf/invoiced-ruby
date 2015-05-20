module Invoiced
  class Configuration
    attr_accessor(
      :api_key,
      :base_url,
      :backend
    )

    def base_url
      "https://api.invoiced.com"
    end

    def backend
      Typhoeus::Request
    end
  end
end
