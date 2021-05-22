# Generated by default/object.tt
package Paws::TimestreamQuery::TimeSeriesDataPoint;
  use Moose;
  has Time => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Paws::TimestreamQuery::Datum', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::TimeSeriesDataPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::TimeSeriesDataPoint object:

  $service_obj->Method(Att1 => { Time => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::TimeSeriesDataPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Time

=head1 DESCRIPTION

The timeseries datatype represents the values of a measure over time. A
time series is an array of rows of timestamps and measure values, with
rows sorted in ascending order of time. A TimeSeriesDataPoint is a
single data point in the timeseries. It represents a tuple of (time,
measure value) in a timeseries.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Time => Str

The timestamp when the measure value was collected.


=head2 B<REQUIRED> Value => L<Paws::TimestreamQuery::Datum>

The measure value for the data point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

