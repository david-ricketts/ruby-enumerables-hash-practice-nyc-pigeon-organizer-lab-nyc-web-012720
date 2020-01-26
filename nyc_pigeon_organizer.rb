def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |title, value|
    value.each do |information_colected, names|
      names.each do |name|
        if pigeons[name] == nil
          pigeons[name] = {}
        end
        if pigeons[name][title] == nil
          pigeons[name][title] = {}
        end
        pigeons[name][title][title].push(information_colected.to_s)
      end
    end
  end
  pigeons
end
