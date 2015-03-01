json.array!(@testrs) do |testr|
  json.extract! testr, :id, :name, :burp
  json.url testr_url(testr, format: :json)
end
