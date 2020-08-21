class Message < ApplicationRecord
  belongs_to :user, optional: true
  validates :first_name, :family_name, :first_name_kana, :family_name_kana, :introduction, :hobby, :skill, :likes ,presence: true
end
