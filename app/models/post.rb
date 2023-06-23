class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :start, presence: true
  validates :end_date, presence: true
  validates :memo, length: {maximum: 500}
  
  validate :start_end_check

  def start_end_check
    return false if end_date.blank? || start.blank?
    if 
      end_date < start
      errors.add(:end_date, "には開始日と同日または後の日付を入力してください") 
    end
  end
end
