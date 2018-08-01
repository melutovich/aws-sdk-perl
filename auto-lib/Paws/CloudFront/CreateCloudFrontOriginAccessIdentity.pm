
package Paws::CloudFront::CreateCloudFrontOriginAccessIdentity;
  use Moose;
  has CloudFrontOriginAccessIdentityConfig => (is => 'ro', isa => 'Paws::CloudFront::CloudFrontOriginAccessIdentityConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFrontOriginAccessIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/origin-access-identity/cloudfront');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateCloudFrontOriginAccessIdentity - Arguments for method CreateCloudFrontOriginAccessIdentity on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCloudFrontOriginAccessIdentity2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateCloudFrontOriginAccessIdentity2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCloudFrontOriginAccessIdentity2017_10_30.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateCloudFrontOriginAccessIdentityResult =
      $cloudfront->CreateCloudFrontOriginAccessIdentity(
      CloudFrontOriginAccessIdentityConfig => {
        CallerReference => 'Mystring',
        Comment         => 'Mystring',

      },

      );

    # Results:
    my $CloudFrontOriginAccessIdentity =
      $CreateCloudFrontOriginAccessIdentityResult
      ->CloudFrontOriginAccessIdentity;
    my $ETag     = $CreateCloudFrontOriginAccessIdentityResult->ETag;
    my $Location = $CreateCloudFrontOriginAccessIdentityResult->Location;

# Returns a L<Paws::CloudFront::CreateCloudFrontOriginAccessIdentityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateCloudFrontOriginAccessIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudFrontOriginAccessIdentityConfig => L<Paws::CloudFront::CloudFrontOriginAccessIdentityConfig>

The current configuration information for the identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCloudFrontOriginAccessIdentity2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

