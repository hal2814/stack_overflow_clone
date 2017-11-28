require 'rails_helper'

describe Question do
  it { should belong_to :user}
  it { should have_many :responses}
  it { should have_many :votes}
  it { should validate_presence_of :question }
  it { should validate_presence_of :category }
end
