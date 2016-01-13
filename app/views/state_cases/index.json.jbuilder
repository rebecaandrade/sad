json.array!(@state_cases) do |state_case|
  json.extract! state_case, :id, :state, :punctuation
  json.url state_case_url(state_case, format: :json)
end
