module RSpreedly
  module PaymentMethod
    class CreditCard < Base
      attr_accessor :number, :verification_value, :month, 
                    :year, :first_name, :last_name, :card_type,
                    :address1, :address2, :city, :state, :zip, :country,
                    :phone_number
    end
    class OnFile < Base
       def to_xml(opts=nil)
         "<payment> <account-type>on-file</account-type> </payment>"
       end
    end
  end
end