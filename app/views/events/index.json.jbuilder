json.array!(@events) do |event|
  json.extract! event, :id, :eventname, :eventlocation, :eventdate, :eventnotes
  json.url event_url(event, format: :json)
end
