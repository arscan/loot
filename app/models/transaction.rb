class Transaction < ActiveRecord::Base
  belongs_to :account
  attr_accessible :amount, :date, :description
end
