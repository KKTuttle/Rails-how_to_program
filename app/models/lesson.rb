class Lesson<ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true

  # scope :next, -> do
  #   where({:number => })
  # end

  def next
    next_number = self.number + 1
    return Lesson.find_by(number: next_number)
  end

  def previous
    previous_number = self.number - 1
    return Lesson.find_by(number: previous_number)
  end
end
