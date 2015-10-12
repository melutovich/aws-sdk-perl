package Paws::DeviceFarm::UniqueProblem;
  use Moose;
  has message => (is => 'ro', isa => 'Str');
  has problems => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Problem]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UniqueProblem

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::UniqueProblem object:

  $service_obj->Method(Att1 => { message => $value, ..., problems => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::UniqueProblem object:

  $result = $service_obj->Method(...);
  $result->Att1->message

=head1 ATTRIBUTES

=head2 message => Str

  A message about the unique problems' result.

=head2 problems => ArrayRef[L<Paws::DeviceFarm::Problem>]

  Information about the problems.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

