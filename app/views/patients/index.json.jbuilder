json.array!(@patients) do |patient|
  json.extract! patient, :id, :First_name, :Middle_name, :Last_name, :Medical_Record_number, :Date_of_birth, :Gender, :Status, :Location
  json.url patient_url(patient, format: :json)
end
