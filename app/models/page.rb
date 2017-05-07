class Page < ApplicationRecord
  paginates_per 1
  validates_presence_of :name, :body
end
