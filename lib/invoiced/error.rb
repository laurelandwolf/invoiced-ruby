module Invoiced
  class Error < StandardError; end
  class UnauthorizedError < Error; end
  class ForbiddenError < Error; end
  class NotFoundError < Error; end
end
