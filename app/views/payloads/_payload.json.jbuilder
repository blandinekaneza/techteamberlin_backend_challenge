json.extract! payload, :id, :payload_id, :reused, :manufacturer, :payload_type, :payload_mass_kg, :payload_mass_lbs, :orbit, :created_at, :updated_at
json.url payload_url(payload, format: :json)
