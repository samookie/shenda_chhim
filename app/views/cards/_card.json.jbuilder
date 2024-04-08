json.extract! card, :id, :name, :description, :type_card_id, :created_at, :updated_at
json.url card_url(card, format: :json)
