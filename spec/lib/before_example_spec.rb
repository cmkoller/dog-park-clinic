require_relative "../../lib/dog"

## #######################
## BEFORE(:EACH) EXAMPLE
## #######################

describe Dog do
  let(:dog) { Dog.new("Murphy", "Lab", 1, "Christina") }

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
      before(:each) do
        dog.birthday!
        dog.birthday!
      end

      it "should return false if age > 1" do
        expect(dog.puppy?).to eq(false)
      end
    end
  end
end
