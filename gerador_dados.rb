# frozen_string_literal: true

require 'faker'
require 'csv'

Faker::Config.locale = 'pt-BR'

CSV.open('estados.csv', 'w') do |csv|
  csv << ['ID', 'Nome', 'UF']
  3.times do |i|
    csv << [i + 1, Faker::Address.state, Faker::Address.state_abbr]
  end
end

CSV.open('municipios.csv', 'w') do |csv|
  csv << ['ID', 'Estado_ID', 'Nome', 'CodIBGE']
  3.times do |i|
    csv << [i + 1, rand(1..3), Faker::Address.city, Faker::Number.number(digits: 7)]
  end
end

CSV.open('clientes.csv', 'w') do |csv|
  csv << ['ID', 'Nome', 'CPF', 'Celular', 'EndLogradouro', 'EndNumero', 'EndMunicipio', 'EndCEP', 'Municipio_ID']
  3.times do |i|
    csv << [
      i + 1,
      Faker::Name.name,
      Faker::IdNumber.brazilian_citizen_number(formatted: false),
      Faker::PhoneNumber.cell_phone.gsub(/\D/, ''),
      Faker::Address.street_name,
      Faker::Address.building_number,
      rand(1..3),
      Faker::Address.postcode.gsub(/\D/, ''),
      rand(1..3)
    ]
  end
end

CSV.open('contas_receber.csv', 'w') do |csv|
  csv << ['ID', 'Cliente_ID', 'FaturaVendaID', 'DataConta', 'Valor', 'Situação']
  3.times do |i|
    csv << [
      i + 1,
      rand(1..3),
      rand(1000..9999),
      Faker::Date.forward(days: 30).strftime('%Y-%m-%d'),
      Faker::Commerce.price(range: 100.0..1000.0).round(2),
      ['1', '2', '3'].sample
    ]
  end
end
