json.array!(@data) do |data|
  json.extract! data, :id
  json.label "#{data.plot_no}"
  json.value "#{data.plot_no}"
end
