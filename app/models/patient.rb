class Patient < ActiveRecord::Base
  has_many :viewed_counts, dependent: :destroy
end
