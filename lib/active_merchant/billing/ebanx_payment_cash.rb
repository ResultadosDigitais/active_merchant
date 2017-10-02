module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    class EbanxPaymentCash < PaymentCash

      attr_reader :name

      def initialize(payment_data, options = {})
        super
        @name = @metadata[:name]
      end

      def type
        'ebanx'
      end
    end
  end
end
