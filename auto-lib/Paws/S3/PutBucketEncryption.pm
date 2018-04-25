
package Paws::S3::PutBucketEncryption;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::S3::ServerSideEncryptionConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketEncryption');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?encryption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketEncryption - Arguments for method PutBucketEncryption on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketEncryption on the 
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketEncryption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketEncryption.

As an example:

  $service_obj->PutBucketEncryption(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which the server-side encryption
configuration is set.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the server-side encryption
configuration.



=head2 B<REQUIRED> ServerSideEncryptionConfiguration => L<Paws::S3::ServerSideEncryptionConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketEncryption in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

