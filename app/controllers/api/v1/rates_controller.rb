# frozen_string_literal: true

module Api
  module V1
    class RatesController < ApplicationController
      def create
        rates = GetRates.call(params)
        if rates.success?
          render json: rates.result.as_json
        else
          render json: { message: 'error' }
        end
      end
    end
  end
end
