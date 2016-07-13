require 'airport'
#require 'plane'

describe Airport do

  #As an air traffic controller
  #So I can get passengers to a destination
  #I want to instruct a plane to land at an airport and confirm that it has landed

  #Object          Message
  #
  #Passengers
  #Plane           in_air?
  #Airport         landed?
#
  #Plane   <-- in_air?     --> true/flase
  #Airport <-- land_plane  --> Plane.new

  it { is_expected.to respond_to :land_plane }

  it 'lands a plane that is in_air' do
    plane = subject.land_plane
    expect(plane).not_to be_in_air
  end
end
