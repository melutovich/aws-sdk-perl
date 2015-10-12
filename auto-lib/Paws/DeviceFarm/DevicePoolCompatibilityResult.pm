package Paws::DeviceFarm::DevicePoolCompatibilityResult;
  use Moose;
  has compatible => (is => 'ro', isa => 'Bool');
  has device => (is => 'ro', isa => 'Paws::DeviceFarm::Device');
  has incompatibilityMessages => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::IncompatibilityMessage]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DevicePoolCompatibilityResult

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DevicePoolCompatibilityResult object:

  $service_obj->Method(Att1 => { compatible => $value, ..., incompatibilityMessages => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DevicePoolCompatibilityResult object:

  $result = $service_obj->Method(...);
  $result->Att1->compatible

=head1 ATTRIBUTES

=head2 compatible => Bool

  Whether the result was compatible with the device pool.

=head2 device => L<Paws::DeviceFarm::Device>

  

=head2 incompatibilityMessages => ArrayRef[L<Paws::DeviceFarm::IncompatibilityMessage>]

  Information about the compatibility.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

