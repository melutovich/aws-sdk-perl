
package Paws::AlexaForBusiness::SearchProfiles;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortCriteria => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::Sort]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::SearchProfilesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchProfiles - Arguments for method SearchProfiles on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchProfiles on the 
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method SearchProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchProfiles.

As an example:

  $service_obj->SearchProfiles(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::AlexaForBusiness::Filter>]

The filters to use to list a specified set of room profiles. Supported
filter keys are ProfileName and Address. Required.



=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified C<MaxResults> value, a token is
included in the response so that the remaining results can be
retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by C<MaxResults>.



=head2 SortCriteria => ArrayRef[L<Paws::AlexaForBusiness::Sort>]

The sort order to use in listing the specified set of room profiles.
Supported sort keys are ProfileName and Address.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchProfiles in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

