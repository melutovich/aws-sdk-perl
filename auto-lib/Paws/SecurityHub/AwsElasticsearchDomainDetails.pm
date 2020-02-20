package Paws::SecurityHub::AwsElasticsearchDomainDetails;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str');
  has DomainEndpointOptions => (is => 'ro', isa => 'Paws::SecurityHub::AwsElasticsearchDomainDomainEndpointOptions');
  has DomainId => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
  has ElasticsearchVersion => (is => 'ro', isa => 'Str');
  has EncryptionAtRestOptions => (is => 'ro', isa => 'Paws::SecurityHub::AwsElasticsearchDomainEncryptionAtRestOptions');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Endpoints => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');
  has NodeToNodeEncryptionOptions => (is => 'ro', isa => 'Paws::SecurityHub::AwsElasticsearchDomainNodeToNodeEncryptionOptions');
  has VPCOptions => (is => 'ro', isa => 'Paws::SecurityHub::AwsElasticsearchDomainVPCOptions');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsElasticsearchDomainDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsElasticsearchDomainDetails object:

  $service_obj->Method(Att1 => { AccessPolicies => $value, ..., VPCOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsElasticsearchDomainDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicies

=head1 DESCRIPTION

Information about an Elasticsearch domain.

=head1 ATTRIBUTES


=head2 AccessPolicies => Str

  IAM policy document specifying the access policies for the new Amazon
ES domain.


=head2 DomainEndpointOptions => L<Paws::SecurityHub::AwsElasticsearchDomainDomainEndpointOptions>

  Additional options for the domain endpoint.


=head2 DomainId => Str

  Unique identifier for an Amazon ES domain.


=head2 DomainName => Str

  Name of an Amazon ES domain.

Domain names are unique across all domains owned by the same account
within an AWS Region.

Domain names must start with a lowercase letter and must be between 3
and 28 characters.

Valid characters are a-z (lowercase only), 0-9, and E<ndash> (hyphen).


=head2 ElasticsearchVersion => Str

  Elasticsearch version.


=head2 EncryptionAtRestOptions => L<Paws::SecurityHub::AwsElasticsearchDomainEncryptionAtRestOptions>

  Details about the configuration for encryption at rest.


=head2 Endpoint => Str

  Domain-specific endpoint used to submit index, search, and data upload
requests to an Amazon ES domain.

The endpoint is a service URL.


=head2 Endpoints => L<Paws::SecurityHub::FieldMap>

  The key-value pair that exists if the Amazon ES domain uses VPC
endpoints.


=head2 NodeToNodeEncryptionOptions => L<Paws::SecurityHub::AwsElasticsearchDomainNodeToNodeEncryptionOptions>

  Details about the configuration for node-to-node encryption.


=head2 VPCOptions => L<Paws::SecurityHub::AwsElasticsearchDomainVPCOptions>

  Information that Amazon ES derives based on C<VPCOptions> for the
domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

