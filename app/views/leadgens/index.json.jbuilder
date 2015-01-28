json.array!(@leadgens) do |leadgen|
  json.extract! leadgen, :id, :companies, :deadline, :leadsper
  json.url leadgen_url(leadgen, format: :json)
end
