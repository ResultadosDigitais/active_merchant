module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    # Base class representation of payment cash
    class PaymentCash
      attr_reader :payment_data

      def initialize(payment_data, options = {})
        @payment_data = payment_data
        @metadata = options.with_indifferent_access
      end

      def type
        raise NotImplementedError
      end
    end
  end
end
