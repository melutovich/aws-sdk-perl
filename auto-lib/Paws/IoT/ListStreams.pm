
package Paws::IoT::ListStreams;
  use Moose;
  has AscendingOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'ascendingOrder');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streams');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListStreamsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListStreams - Arguments for method ListStreams on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreams on the 
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreams.

As an example:

  $service_obj->ListStreams(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Set to true to return the list of streams in ascending order.



=head2 MaxResults => Int

The maximum number of results to return at a time.



=head2 NextToken => Str

A token used to get the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreams in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

