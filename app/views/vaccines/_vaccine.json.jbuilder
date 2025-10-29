json.extract! vaccine, :id, :name, :manufacturer, :dose_number, :schedule_interval, :created_at, :updated_at
json.url vaccine_url(vaccine, format: :json)
