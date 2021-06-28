require 'rails_helper'

RSpec.describe Post, :type => :model do
  person = Person.new(name: "Test Test", email: "test@gmail.com", bio: "test test test test test") 
  subject { person.posts.new(subject: "Test Test Test", body: "Test test test test test", date: "2021-06-28") }

  describe "Associations" do
    it { should belong_to(:person) }
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a subject" do
    subject.subject = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a body" do
    subject.body = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

end