require 'rails_helper'

RSpec.describe Person, :type => :model do

  subject { described_class.new(name: "Test Test", email: "test@gmail.com", bio: "test test test test test") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a bio" do
    subject.bio = nil
    expect(subject).to_not be_valid
  end

end