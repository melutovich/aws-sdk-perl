# Generated by default/object.tt
package Paws::Health::Event;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has EventScopeCode => (is => 'ro', isa => 'Str', request_name => 'eventScopeCode', traits => ['NameInRequest']);
  has EventTypeCategory => (is => 'ro', isa => 'Str', request_name => 'eventTypeCategory', traits => ['NameInRequest']);
  has EventTypeCode => (is => 'ro', isa => 'Str', request_name => 'eventTypeCode', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has Service => (is => 'ro', isa => 'Str', request_name => 'service', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has StatusCode => (is => 'ro', isa => 'Str', request_name => 'statusCode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::Event object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Summary information about an AWS Health event.

AWS Health events can be public or account-specific:

=over

=item *

I<Public events> might be service events that are not specific to an
AWS account. For example, if there is an issue with an AWS Region, AWS
Health provides information about the event, even if you don't use
services or resources in that Region.

=item *

I<Account-specific> events are specific to either your AWS account or
an account in your organization. For example, if there's an issue with
Amazon Elastic Compute Cloud in a Region that you use, AWS Health
provides information about the event and the affected resources in the
account.

=back

You can determine if an event is public or account-specific by using
the C<eventScopeCode> parameter. For more information, see
eventScopeCode
(https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode).

=head1 ATTRIBUTES


=head2 Arn => Str

The unique identifier for the event. The event ARN has the
C<arn:aws:health:I<event-region>::event/I<SERVICE>/I<EVENT_TYPE_CODE>/I<EVENT_TYPE_PLUS_ID>
> format.

For example, an event ARN might look like the following:

C<arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456>


=head2 AvailabilityZone => Str

The AWS Availability Zone of the event. For example, us-east-1a.


=head2 EndTime => Str

The date and time that the event ended.


=head2 EventScopeCode => Str

This parameter specifies if the AWS Health event is a public AWS
service event or an account-specific event.

=over

=item *

If the C<eventScopeCode> value is C<PUBLIC>, then the
C<affectedAccounts> value is always empty.

=item *

If the C<eventScopeCode> value is C<ACCOUNT_SPECIFIC>, then the
C<affectedAccounts> value lists the affected AWS accounts in your
organization. For example, if an event affects a service such as Amazon
Elastic Compute Cloud and you have AWS accounts that use that service,
those account IDs appear in the response.

=item *

If the C<eventScopeCode> value is C<NONE>, then the C<eventArn> that
you specified in the request is invalid or doesn't exist.

=back



=head2 EventTypeCategory => Str

The category of the event. Possible values are C<issue>,
C<scheduledChange>, and C<accountNotification>.


=head2 EventTypeCode => Str

The unique identifier for the event type. The format is
C<AWS_I<SERVICE>_I<DESCRIPTION> >; for example,
C<AWS_EC2_SYSTEM_MAINTENANCE_EVENT>.


=head2 LastUpdatedTime => Str

The most recent date and time that the event was updated.


=head2 Region => Str

The AWS Region name of the event.


=head2 Service => Str

The AWS service that is affected by the event. For example, C<EC2>,
C<RDS>.


=head2 StartTime => Str

The date and time that the event began.


=head2 StatusCode => Str

The most recent status of the event. Possible values are C<open>,
C<closed>, and C<upcoming>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

