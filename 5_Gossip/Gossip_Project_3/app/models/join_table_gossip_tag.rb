class JoinTableGossipTag < ApplicationRecord
  belongs_to :tag
  belongs_to :gossip
  accepts_nested_attributes_for :tag
  accepts_nested_attributes_for :gossip
end
