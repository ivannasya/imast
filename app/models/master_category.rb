class MasterCategory < ActiveRecord::Base
  belongs_to :masters
  belongs_to :categories
end
