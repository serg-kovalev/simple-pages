class Page < ApplicationRecord
  paginates_per 20
  validates_presence_of :name, :body
end
