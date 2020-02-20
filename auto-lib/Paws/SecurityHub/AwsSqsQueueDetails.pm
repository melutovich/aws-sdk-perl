package Paws::SecurityHub::AwsSqsQueueDetails;
  use Moose;
  has DeadLetterTargetArn => (is => 'ro', isa => 'Str');
  has KmsDataKeyReusePeriodSeconds => (is => 'ro', isa => 'Int');
  has KmsMasterKeyId => (is => 'ro', isa => 'Str');
  has QueueName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsSqsQueueDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsSqsQueueDetails object:

  $service_obj->Method(Att1 => { DeadLetterTargetArn => $value, ..., QueueName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsSqsQueueDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DeadLetterTargetArn

=head1 DESCRIPTION

Data about a queue.

=head1 ATTRIBUTES


=head2 DeadLetterTargetArn => Str

  The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon
SQS moves messages after the value of C<maxReceiveCount> is exceeded.


=head2 KmsDataKeyReusePeriodSeconds => Int

  The length of time, in seconds, for which Amazon SQS can reuse a data
key to encrypt or decrypt messages before calling AWS KMS again.


=head2 KmsMasterKeyId => Str

  The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a
custom CMK.


=head2 QueueName => Str

  The name of the new queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

