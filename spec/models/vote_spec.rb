require 'rails_helper'

describe Vote do
  it { should belong_to :question}
  it { should belong_to :response}
  it { should validate_numericality_of(:count).only_integer }
end
