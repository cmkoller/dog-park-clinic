require 'pry'
require_relative "../../lib/dog"

describe Dog do
  let(:dog) { Dog.new("Murphy", "Lab", 1, "Christina") }
  
  describe "#initialize" do
    it "should successfully initialize w/ name, breed, age, and owner" do
      expect(dog).to be_a Dog
      expect(dog.name).to eq("Murphy")
      expect(dog.breed).to eq("Lab")
      expect(dog.age).to eq(1)
      expect(dog.owner).to eq("Christina")
    end

    it "should initialize even without an owner" do
      dog = Dog.new("Murphy", "Lab", 1)
      expect(dog).to be_a Dog
    end
  end

  describe "self#parse" do
    it "can be initialized with a string of info" do
      expect(Dog.parse("Murphy, Lab, 1, Christina")).to be_a Dog
    end
  end
end
