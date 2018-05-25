require_relative "./spec_helper"

describe "RACHEL'S ANIMALS" do
  describe "#no_puppies" do
    it "tells Rachel good job if she sticks to her animal goals" do
      expect(no_puppies(0)).to eq('Good job, Rachel!')
    end

    it "tells Rachel to get back to her animal goals if she gets any puppies" do
      expect(no_puppies(3)).to eq('Get back to your animal goals!')
    end
  end

  describe "#less_puppies" do
    it "tells Rachel good job if she sticks to her animal goals" do
      expect(less_puppies(2)).to eq('Good job, Rachel!')
    end

    it "tells Rachel to slow down if she gets 3 puppies" do
      expect(less_puppies(3)).to eq('Slow down! No more puppies.')
    end

    it "tells Rachel to get back to her animal goals if she gets more than 3 puppies" do
      expect(less_puppies(4)).to eq('Get back to your animal goals!')
    end
  end

  describe "#some_puppies" do
    it "tells Rachel good job if she gets less than half of the puppies" do
      expect(some_puppies(2, 6)).to eq('Good job, Rachel!')
    end

    it "tells Rachel to get back to her animal goals when she has acquired more puppies than expected" do
      expect(some_puppies(7, 6)).to eq('Get back to your animal goals!')
    end
  end

  describe "#both_animals" do
    it "it tells Rachel good job if she sticks to her animal goals" do
      expect(both_animals(0, 5)).to eq('Good job!')
    end

    it "it tells Rachel to get back to her animal goals when she strays" do
      expect(both_animals(5, 5)).to eq('Get back to your animal goals!')
    end
  end
end
