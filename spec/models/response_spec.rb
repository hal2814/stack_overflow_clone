require 'rails_helper'

describe Response do
  it { should belong_to :question}
  it { should belong_to :user}
  it { should have_many :votes}
  it { should validate_presence_of :response }
  it do
    should validate_inclusion_of(:best).
      in_array([true, false])
  end

  it do
    should validate_exclusion_of(:best).
      in_array([nil])
  end
end
