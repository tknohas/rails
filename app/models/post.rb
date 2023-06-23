class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start, presence: true
  validates :end, presence: true
  validates :memo, length: {maximum: 500}
  
  def start_end_check
    errors.add(:end, "には開始日と同日または後の日付を入力してください") unless
    self.start <= self.end
  end

validate :start_end_check
end
