require_relative "../../lib/dog"

## #######################
## BASIC `LET` EXAMPLE
## #######################

describe Dog do
  let(:dog) { Dog.new("Murphy", "Lab", 1, "Christina") }

  describe "#initialize" do
    it "should successfully initialize w/ name, breed, age, and owner" do
      expect(dog).to be_a Dog
    end
  end

  describe "#puppy?" do
    it "should return true if age <= 1" do
      expect(dog.puppy?).to eq(true)
    end
  end
end


## #######################
## ADVANCED `LET` EXAMPLE
## #######################

describe Dog do
  let(:dog) { Dog.new("Murphy", "Lab", age, "Christina") }
  let(:age) { 1 }

  describe "#initialize" do
    it "should successfully initialize w/ name, breed, age, and owner" do
      expect(dog).to be_a Dog
    end
  end

  describe "#puppy?" do
    context "young dog" do
      it "should return true if age <= 1" do
        expect(dog.puppy?).to eq(true)
      end
    end
    context "old dog" do
      let(:age) { 10 }
      it "should return false if age > 1" do
        expect(dog.puppy?).to eq(false)
      end
    end
  end
end
