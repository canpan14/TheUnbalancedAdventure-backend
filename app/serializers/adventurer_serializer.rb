# frozen_string_literal: true

class AdventurerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_created, :current_exp, :is_alive, :rock_count, :paper_count, :scissor_count, :kills,
             :attack_stat_points, :health_stat_points
  has_one :level
  has_one :state

  def date_created
    object.created_at.strftime('%Y-%m-%d %X')
  end
end
