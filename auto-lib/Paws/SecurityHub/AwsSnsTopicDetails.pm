package Paws::SecurityHub::AwsSnsTopicDetails;
  use Moose;
  has KmsMasterKeyId => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has Subscription => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsSnsTopicSubscription]');
  has TopicName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsSnsTopicDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsSnsTopicDetails object:

  $service_obj->Method(Att1 => { KmsMasterKeyId => $value, ..., TopicName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsSnsTopicDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsMasterKeyId

=head1 DESCRIPTION

A wrapper type for the topic's Amazon Resource Name (ARN).

=head1 ATTRIBUTES


=head2 KmsMasterKeyId => Str

  The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a
custom CMK.


=head2 Owner => Str

  The subscription's owner.


=head2 Subscription => ArrayRef[L<Paws::SecurityHub::AwsSnsTopicSubscription>]

  Subscription is an embedded property that describes the subscription
endpoints of an Amazon SNS topic.


=head2 TopicName => Str

  The name of the topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

