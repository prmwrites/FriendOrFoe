json.array!(@relations) do |relation|
  json.extract! relation, :id, :name, :parent_id
  json.url relation_url(relation, format: :json)
end
