json.array!(@calendar_records) do |record|
  json.start record.date
  json.end record.date
  json.title record.challenge_time
end