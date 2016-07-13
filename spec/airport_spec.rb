require 'airport'
#require 'plane'

describe Airport do

  # As an air traffic controller
  # So I can get passengers to a destination
  # I want to instruct a plane to land at an airport and confirm that it has landed

  #Object          Message
  #
  #Passengers
  #Plane           in_air?
  #Airport         land_plane
#
  #Plane    <-- in_air?     -->  true/flase
  #Airport  <-- land_plane  -->  Plane.new

  it { is_expected.to respond_to(:land_plane).with(1).argument }

  it 'lands a plane' do
    plane = Plane.new
    expect(plane).not_to be_in_air
    expect(subject.land_plane(plane)).to eq plane
  end

  # As an air traffic controller
  # So I can get passengers on the way to their destination
  # I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

  # Object          Message
  #
  # Passengers
  # Plane           in_air?
  # Airport         take_off

  # Plane   <--  in_air?   -->  true/false
  # Airport <--  take_off  -->

  it { is_expected.to respond_to(:take_off).with(1).argument }

  it 'instructs a plane to take_off' do
    plane = subject.take_off(:plane)
    expect(plane).to be_in_air
  end
end
