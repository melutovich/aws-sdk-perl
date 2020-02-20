package Paws::SecurityHub::AwsEc2SecurityGroupDetails;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEc2SecurityGroupIpPermission]');
  has IpPermissionsEgress => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEc2SecurityGroupIpPermission]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2SecurityGroupDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2SecurityGroupDetails object:

  $service_obj->Method(Att1 => { GroupId => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2SecurityGroupDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupId

=head1 DESCRIPTION

Details about an EC2 security group.

=head1 ATTRIBUTES


=head2 GroupId => Str

  The ID of the security group.


=head2 GroupName => Str

  The name of the security group.


=head2 IpPermissions => ArrayRef[L<Paws::SecurityHub::AwsEc2SecurityGroupIpPermission>]

  The inbound rules associated with the security group.


=head2 IpPermissionsEgress => ArrayRef[L<Paws::SecurityHub::AwsEc2SecurityGroupIpPermission>]

  [VPC only] The outbound rules associated with the security group.


=head2 OwnerId => Str

  The AWS account ID of the owner of the security group.


=head2 VpcId => Str

  [VPC only] The ID of the VPC for the security group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

