
package Paws::IoTAnalytics::CreateDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn');
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The ARN of the data set.


=head2 DatasetName => Str

The name of the data set.


=head2 _request_id => Str


=cut

