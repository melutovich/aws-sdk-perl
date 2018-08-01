
package Paws::CloudFront::DeletePublicKey;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePublicKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/public-key/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DeletePublicKey - Arguments for method DeletePublicKey on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePublicKey2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method DeletePublicKey2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePublicKey2017_10_30.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    $cloudfront->DeletePublicKey(
      Id      => 'Mystring',
      IfMatch => 'Mystring',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/DeletePublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the public key you want to remove from CloudFront.



=head2 IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
public key identity to delete. For example: C<E2QWRUHAPOMQZL>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePublicKey2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

