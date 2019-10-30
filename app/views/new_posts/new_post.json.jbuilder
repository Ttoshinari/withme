json.array!(@prefectures) do |prefecture|
    json.area_id prefecture.area_id
    json.prefecture_id prefecture.id
    json.prefecture_name prefecture.prefecture
end


json.array!(@areas) do |area|
    json.area_id area.id
    json.area_name area.area
end