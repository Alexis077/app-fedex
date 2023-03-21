# frozen_string_literal: true

module Api
  module V1
    class RatesController < ApplicationController
      def create
        rates = GetRates.call(params)
        return render json: rates.result.as_json if rates.success?

        render json: { message: rates.message }
      end
    end
  end
end
