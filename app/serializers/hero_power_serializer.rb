class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :strength, :hero_id, :power_id

  has_many :hero,  except: [:created_at, :updated_at]
end
