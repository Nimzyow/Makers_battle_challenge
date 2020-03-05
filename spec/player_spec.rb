require "player"
describe Player do
  let(:subject) {described_class.new("Nima")}
  context "has attributes" do
    it "name" do
      expect(subject).to respond_to(:name)
    end
  end
end