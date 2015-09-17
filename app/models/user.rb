class User < ActiveRecord::Base
  has_one :board
end
