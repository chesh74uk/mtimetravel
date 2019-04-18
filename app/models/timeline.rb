class Timeline
  include Mongoid::Document
  field :timelinename, type: String
  embeds_many :stages
  accepts_nested_attributes_for :stages
end
