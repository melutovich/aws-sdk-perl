# Generated by default/object.tt
package Paws::GroundStation::ConfigDetails;
  use Moose;
  has AntennaDemodDecodeDetails => (is => 'ro', isa => 'Paws::GroundStation::AntennaDemodDecodeDetails', request_name => 'antennaDemodDecodeDetails', traits => ['NameInRequest']);
  has EndpointDetails => (is => 'ro', isa => 'Paws::GroundStation::EndpointDetails', request_name => 'endpointDetails', traits => ['NameInRequest']);
  has S3RecordingDetails => (is => 'ro', isa => 'Paws::GroundStation::S3RecordingDetails', request_name => 's3RecordingDetails', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ConfigDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::ConfigDetails object:

  $service_obj->Method(Att1 => { AntennaDemodDecodeDetails => $value, ..., S3RecordingDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::ConfigDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AntennaDemodDecodeDetails

=head1 DESCRIPTION

Details for certain C<Config> object types in a contact.

=head1 ATTRIBUTES


=head2 AntennaDemodDecodeDetails => L<Paws::GroundStation::AntennaDemodDecodeDetails>

Details for antenna demod decode C<Config> in a contact.


=head2 EndpointDetails => L<Paws::GroundStation::EndpointDetails>




=head2 S3RecordingDetails => L<Paws::GroundStation::S3RecordingDetails>

Details for an S3 recording C<Config> in a contact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

