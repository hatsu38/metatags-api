class Metatag < ActiveRecord::Base
  validates :domain, presence: true, uniqueness: true
end
