json.array!(@subjects) do |subject|
  json.extract! subject, :id, :title, :description, :participant_id, :conference_id
  json.url subject_url(subject, format: :json)
end
