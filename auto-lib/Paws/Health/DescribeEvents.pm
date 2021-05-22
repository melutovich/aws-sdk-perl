
package Paws::Health::DescribeEvents;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Health::EventFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEvents - Arguments for method DescribeEvents on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    my $DescribeEventsResponse = $health->DescribeEvents(
      Filter => {
        AvailabilityZones => [
          'MyavailabilityZone', ...    # min: 6, max: 18
        ],                             # OPTIONAL
        EndTimes => [
          {
            From => '1970-01-01T01:00:00',    # OPTIONAL
            To   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],                                    # min: 1, max: 10; OPTIONAL
        EntityArns => [
          'MyentityArn', ...                  # max: 1600
        ],                                    # min: 1, max: 100; OPTIONAL
        EntityValues => [
          'MyentityValue', ...                # max: 1224
        ],                                    # min: 1, max: 100; OPTIONAL
        EventArns => [
          'MyeventArn', ...                   # max: 1600
        ],                                    # min: 1, max: 10; OPTIONAL
        EventStatusCodes => [
          'open', ...                         # values: open, closed, upcoming
        ],                                    # min: 1, max: 6; OPTIONAL
        EventTypeCategories => [
          'issue',
          ... # values: issue, accountNotification, scheduledChange, investigationmin: 3, max: 255
        ],    # min: 1, max: 10; OPTIONAL
        EventTypeCodes => [
          'MyeventType', ...    # min: 3, max: 100
        ],                      # min: 1, max: 10; OPTIONAL
        LastUpdatedTimes => [
          {
            From => '1970-01-01T01:00:00',    # OPTIONAL
            To   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],                                    # min: 1, max: 10; OPTIONAL
        Regions => [
          'Myregion', ...                     # min: 2, max: 25
        ],                                    # min: 1, max: 10; OPTIONAL
        Services => [
          'Myservice', ...                    # min: 2, max: 30
        ],                                    # min: 1, max: 10; OPTIONAL
        StartTimes => [
          {
            From => '1970-01-01T01:00:00',    # OPTIONAL
            To   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],                                    # min: 1, max: 10; OPTIONAL
        Tags => [
          {
            'MytagKey' => 'MytagValue',       # key: max: 127, value: max: 255
          },
          ...                                 # max: 50
        ],                                    # max: 50; OPTIONAL
      },    # OPTIONAL
      Locale     => 'Mylocale',       # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MynextToken',    # OPTIONAL
    );

    # Results:
    my $Events    = $DescribeEventsResponse->Events;
    my $NextToken = $DescribeEventsResponse->NextToken;

    # Returns a L<Paws::Health::DescribeEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DescribeEvents>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Health::EventFilter>

Values to narrow the results returned.



=head2 Locale => Str

The locale (language) to return information in. English (en) is the
default and the only supported value at this time.



=head2 MaxResults => Int

The maximum number of items to return in one batch, between 10 and 100,
inclusive.



=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

