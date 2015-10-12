package Paws::RedShift::HsmConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has HsmIpAddress => (is => 'ro', isa => 'Str');
  has HsmPartitionName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::HsmConfiguration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::HsmConfiguration object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::HsmConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 ATTRIBUTES

=head2 Description => Str

  A text description of the HSM configuration.

=head2 HsmConfigurationIdentifier => Str

  The name of the Amazon Redshift HSM configuration.

=head2 HsmIpAddress => Str

  The IP address that the Amazon Redshift cluster must use to access the
HSM.

=head2 HsmPartitionName => Str

  The name of the partition in the HSM where the Amazon Redshift clusters
will store their database encryption keys.

=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

  The list of tags for the HSM configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

