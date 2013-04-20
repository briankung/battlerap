class Battle < ActiveRecord::Base
  attr_accessible :category, :friend_id, :user_id
end
