
package Paws::KMS::GetKeyPolicy;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKeyPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GetKeyPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetKeyPolicy - Arguments for method GetKeyPolicy on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKeyPolicy on the 
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GetKeyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKeyPolicy.

As an example:

  $service_obj->GetKeyPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

A unique identifier for the customer master key (CMK).

Specify the key ID or the Amazon Resource Name (ARN) of the CMK.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.



=head2 B<REQUIRED> PolicyName => Str

Specifies the name of the key policy. The only valid name is
C<default>. To get the names of key policies, use ListKeyPolicies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKeyPolicy in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

