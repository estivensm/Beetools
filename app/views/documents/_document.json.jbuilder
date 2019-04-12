json.extract! document, :id, :header, :footer, :logo, :ubication_logo, :process_id, :coding_type, :coding, :document_type_id, :user_id, :user_create_id, :user_review_id, :user_aprove_id, :create_date, :review_date, :aprove_date, :version, :review, :is_last, :created_at, :updated_at
json.url document_url(document, format: :json)
