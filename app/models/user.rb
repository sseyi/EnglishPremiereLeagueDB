# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :teams
  has_many :players, :through => :teams
end
