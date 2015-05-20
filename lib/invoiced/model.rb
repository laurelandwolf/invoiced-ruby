module Invoiced
  module Model
    module ClassMethods
      def create(attributes = {})
        response = Invoiced.configuration.backend.post(
          "#{Invoiced.configuration.base_url}/#{path}/",
          userpwd: "#{Invoiced.configuration.api_key}:",
          body: attributes
        )

        Invoiced::Responder.respond(:create, response, self)
      end

      def fetch(id, options = {})
        response = Invoiced.configuration.backend.get(
          "#{Invoiced.configuration.base_url}/#{path}/#{id}",
          userpwd: "#{Invoiced.configuration.api_key}:",
          params: { expand: expand }
        )

        Invoiced::Responder.respond(:fetch, response, self)
      end

      def update(id, attributes = {})
        response = Invoiced.configuration.backend.patch(
          "#{Invoiced.configuration.base_url}/#{path}/#{id}",
          userpwd: "#{Invoiced.configuration.api_key}:",
          body: attributes
        )

        Invoiced::Responder.respond(:update, response, self)
      end

      def delete(id)
        response = Invoiced.configuration.backend.delete(
          "#{Invoiced.configuration.base_url}/#{path}/#{id}",
          userpwd: "#{Invoiced.configuration.api_key}:"
        )

        Invoiced::Responder.respond(:fetch, response, self)
      end

      protected

      def root; end
      def path; end
      def expand; end
    end

    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, ::Virtus.model
    end
  end
end
