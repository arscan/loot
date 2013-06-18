class Account < ActiveRecord::Base
  belongs_to :accounttype
  has_and_belongs_to_many :users
  attr_accessible :balance, :name, :accounttype_id
end
