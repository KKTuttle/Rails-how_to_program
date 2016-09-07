require 'rails_helper'

describe Lesson do
  it {should validate_presence_of :title}

  it {should validate_presence_of :content}

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      section = Section.create(name: "section")
      current_lesson = Lesson.create({:title => 'lesson1', :content =>'a', :number => 1, :section => section})
      # current_lesson = Section.lesson.create({:title => 'lesson1', :content =>'a', :number => 1, :section_id => 1})
      # next_lesson = Section.lesson.create({:title => 'lesson2', :content =>'b', :number => 2, :section_id => 1})
      next_lesson = Lesson.create({:title => 'lesson2', :content =>'b', :number => 2, :section => section})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the previous-highest number than the current lesson' do
      section = Section.create(name: "section")
      current_lesson = Lesson.create({:title => 'lesson2', :content =>'b', :number => 2, :section =>section})
      previous_lesson = Lesson.create({:title => 'lesson1', :content =>'a', :number => 1, :section =>section})
      expect(current_lesson.previous).to eq previous_lesson
    end
  end
end
