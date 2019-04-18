class Stage
  include Mongoid::Document
  field :stagename, type: String
  field :scenario, type: String
end
