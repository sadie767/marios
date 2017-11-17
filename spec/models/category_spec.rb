require 'rails_helper'

describe Category do
  it { should validate_presence_of :wine }

  it { should have_many :products }
end
