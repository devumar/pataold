module LandlordsHelper
 def build_landlord(landlord)
    landlord.properties.build if landlord.properties.empty?
    landlord
  end
end
