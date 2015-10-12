package Paws::EC2::NetworkAcl;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkAclAssociation]', xmlname => 'associationSet', traits => ['Unwrapped']);
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkAclEntry]', xmlname => 'entrySet', traits => ['Unwrapped']);
  has IsDefault => (is => 'ro', isa => 'Bool', xmlname => 'default', traits => ['Unwrapped']);
  has NetworkAclId => (is => 'ro', isa => 'Str', xmlname => 'networkAclId', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
  has VpcId => (is => 'ro', isa => 'Str', xmlname => 'vpcId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkAcl

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkAcl object:

  $service_obj->Method(Att1 => { Associations => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkAcl object:

  $result = $service_obj->Method(...);
  $result->Att1->Associations

=head1 ATTRIBUTES

=head2 Associations => ArrayRef[L<Paws::EC2::NetworkAclAssociation>]

  Any associations between the network ACL and one or more subnets

=head2 Entries => ArrayRef[L<Paws::EC2::NetworkAclEntry>]

  One or more entries (rules) in the network ACL.

=head2 IsDefault => Bool

  Indicates whether this is the default network ACL for the VPC.

=head2 NetworkAclId => Str

  The ID of the network ACL.

=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the network ACL.

=head2 VpcId => Str

  The ID of the VPC for the network ACL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
