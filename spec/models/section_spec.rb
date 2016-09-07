require 'rails_helper'

describe Section do
  it {should validate_presence_of :name}

  # context '#next' do
  #   it 'returns the section with the next-highest number than the current section' do
  #     current_section = Section.create({:name => 'section1', :id => 1})
  #     next_section = Section.create({:name => 'section2', :id => 2})
  #     expect(current_section.next).to eq next_section
  #   end
  # end

end
