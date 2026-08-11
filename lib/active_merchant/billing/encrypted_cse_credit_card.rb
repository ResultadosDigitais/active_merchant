module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    class EncryptedCseCreditCard < CreditCard

      self.require_verification_value = false
      self.require_name = false

      attr_accessor :encrypted_data

      def credit_card?
        true
      end

      def type
        "encrypted_cse_credit_card"
      end
    end
  end
end
