require 'faker'

FactoryBot.define do
  factory :estadia do
    valor { BigDecimal.new(rand(10.0..60.0).to_s) }
    data_entrada { DateTime.now.beginning_of_day + rand(4..12).hours }

    data_saida do
      time_future_hours = rand(1..10)
      time_future_minutes = rand(1..59)

      data_of_saida = data_entrada + time_future_hours.hours + time_future_minutes.minutes
      data_of_saida
    end
  end
end
