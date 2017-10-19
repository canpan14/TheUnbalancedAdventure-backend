# frozen_string_literal: true

class AdventurerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_created, :current_exp
  has_one :level

  def date_created
    object.created_at.strftime('%Y-%m-%d %X')
  end
end
