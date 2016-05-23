class Objetivo < ActiveRecord::Base
  belongs_to :lineamiento

  has_many :accions
end
