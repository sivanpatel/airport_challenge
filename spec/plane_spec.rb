require 'plane'

## Note these are just some guidelines!
## Feel free to write more tests!!

# When we create a new plane, it should be "flying",
# thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should
# be "landed"
#
# When the plane takes of from the airport, it should be "flying" again
#
# Think about your implementation - does it allow a plane to be "flying" and landed?
# Are you testing that?

describe Plane do

  it { expect(subject).to be_flying }

  it { expect(subject).to respond_to :land }

  it 'is landed after landing' do
    plane = Plane.new
    plane.land
    expect(plane).to be_landed
  end

  it { expect(subject).to respond_to :take_off }

  it 'is flying after take off' do
    plane = Plane.new
    plane.land
    plane.take_off
    expect(plane).to be_flying
  end

end
