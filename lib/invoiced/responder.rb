module Invoiced
  class Responder
    class << self
      def respond(method, response, klass)
        if response.success?
          respond_with_success(method, response, klass)
        else
          respond_with_error(response)
        end
      end

      private

      def respond_with_success(method, response, klass)
        case method
        when :create
          respond_with_object(response, klass)
        when :fetch
          respond_with_object(response, klass)
        when :update
          true
        when :delete
          true
        end
      end

      def respond_with_error(response)
        case response.code
        when 401
          raise Invoiced::UnauthorizedError.new(response), response.body
        when 403
          raise Invoiced::ForbiddenError.new(response), response.body
        when 404
          raise Invoiced::NotFoundError.new(response), response.body
        else
          raise Invoiced::Error.new(response), response.body
        end
      end

      def respond_with_object(response, klass)
        data = JSON.parse(response.body)
        return klass.new(data[klass.root])
      end
    end
  end
end
