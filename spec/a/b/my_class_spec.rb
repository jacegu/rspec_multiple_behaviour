require 'a/b/my_class'

describe A::B::MyClass do

  it "It loads B class if includes A::B" do
    expect(described_class.new.greet).not_to match /^Hi/
    expect(described_class.new.greet).to match /^F/
  end

end
