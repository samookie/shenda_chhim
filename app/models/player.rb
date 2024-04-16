class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :inventory, dependent: :destroy
  has_many :cards, through: :inventory
  after_create :create_inventory

  private

  def create_inventory
    Inventory.create(player_id: self.id)
  end
end
