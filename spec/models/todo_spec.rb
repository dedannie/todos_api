require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association Test
  # ensure ToDo model has a 1:m relationship with Item model
  it { should have_many(:items).dependent(:destroy) }
  
  # Validation Test
  # ensure column titles and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
