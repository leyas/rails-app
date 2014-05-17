class Gist < ActiveRecord::Base
  self.per_page = 5
  validates :description, length: { minimum: 10,
    too_long: "%{count} characters is the maximum allowed" }
  validates :snippet, length: { minimum: 50,
    too_long: "%{count} characters is the maximum allowed" }
end