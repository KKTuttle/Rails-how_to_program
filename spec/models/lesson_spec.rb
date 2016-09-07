require 'rails_helper'

describe Lesson do
  it {should validate_presence_of :title}

  it {should validate_presence_of :content}

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:title => 'lesson1', :content =>'a', :number => 1})
      next_lesson = Lesson.create({:title => 'lesson2', :content =>'b', :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the previous-highest number than the current lesson' do
      current_lesson = Lesson.create({:title => 'lesson2', :content =>'b', :number => 2})
      previous_lesson = Lesson.create({:title => 'lesson1', :content =>'a', :number => 1})
      expect(current_lesson.previous).to eq previous_lesson
    end
  end
end
