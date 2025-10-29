json.extract! immunisation, :id, :patient_id, :vaccine_id, :administered_on, :administered_by, :batch_number, :next_due_date, :created_at, :updated_at
json.url immunisation_url(immunisation, format: :json)
