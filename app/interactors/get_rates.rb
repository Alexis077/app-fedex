# frozen_string_literal: true

class GetRates
  include Interactor

  def call
    result = Fedex::Rates.get({
                                user_credential_key: ENV['USER_CREDENTIAL_KEY'],
                                user_credential_password: ENV['USER_CREDENTIAL_PASSWORD'],
                                account_number: ENV['ACCOUNT_NUMBER'],
                                meter_number: ENV['METER_NUMBER'],
                                environment: ENV['ENVIRONMENT']
                              }, context.as_json['table'])

    context.result = result
  end
end
