require 'rails_helper'

RSpec.describe Sleep, type: :model do
  it { should belong_to :user }
end
