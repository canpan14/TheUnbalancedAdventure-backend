# frozen_string_literal: true

class AdventurerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_created
  has_one :user

  def date_created
    object.created_at.strftime('%Y-%m-%d %X')
  end
end
