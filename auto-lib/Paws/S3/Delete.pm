package Paws::S3::Delete;
  use Moose;
  has Objects => (is => 'ro', isa => 'ArrayRef[Paws::S3::ObjectIdentifier]', xmlname => 'Object', request_name => 'Object', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Quiet => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Delete

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Delete object:

  $service_obj->Method(Att1 => { Objects => $value, ..., Quiet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Delete object:

  $result = $service_obj->Method(...);
  $result->Att1->Objects

=head1 ATTRIBUTES

=head2 B<REQUIRED> Objects => ArrayRef[L<Paws::S3::ObjectIdentifier>]

  

=head2 Quiet => Bool

  Element to enable quiet mode for the request. When you add this
element, you must set its value to true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

