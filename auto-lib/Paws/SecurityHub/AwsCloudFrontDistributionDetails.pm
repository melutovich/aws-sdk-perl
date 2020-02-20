package Paws::SecurityHub::AwsCloudFrontDistributionDetails;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Logging => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionLogging');
  has Origins => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionOrigins');
  has Status => (is => 'ro', isa => 'Str');
  has WebAclId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCloudFrontDistributionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCloudFrontDistributionDetails object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., WebAclId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCloudFrontDistributionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

A distribution configuration.

=head1 ATTRIBUTES


=head2 DomainName => Str

  The domain name corresponding to the distribution.


=head2 ETag => Str

  The entity tag is a hash of the object.


=head2 LastModifiedTime => Str

  The date and time that the distribution was last modified.


=head2 Logging => L<Paws::SecurityHub::AwsCloudFrontDistributionLogging>

  A complex type that controls whether access logs are written for the
distribution.


=head2 Origins => L<Paws::SecurityHub::AwsCloudFrontDistributionOrigins>

  A complex type that contains information about origins for this
distribution.


=head2 Status => Str

  Indicates the current status of the distribution.


=head2 WebAclId => Str

  A unique identifier that specifies the AWS WAF web ACL, if any, to
associate with this distribution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

