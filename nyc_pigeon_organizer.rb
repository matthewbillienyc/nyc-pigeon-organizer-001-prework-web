require 'pry'

def nyc_pigeon_organizer(data)
  pigeons_by_name = {}

  data.each do |trait, datas|
    datas.each do |datas2, name|
      name.each do |name|
        if pigeons_by_name.has_key?(name) == false
          pigeons_by_name[name]= {trait=>[]}
          pigeons_by_name[name][trait].push(datas2.to_s)
        else
          if pigeons_by_name[name].has_key?(trait) == true
            pigeons_by_name[name][trait].push(datas2.to_s)
          else
            pigeons_by_name[name][trait]= []
            pigeons_by_name[name][trait].push(datas2.to_s)
          end
        end
      end
    end
  end
  pigeons_by_name
end