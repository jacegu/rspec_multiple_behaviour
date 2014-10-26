require 'a/my_class'

describe A::MyClass do

  it "It loads A class if no module is specified" do
    expect(described_class.new.greet).to match /^Hi/
    expect(described_class.new.greet).to_not match /^F/
  end

end
