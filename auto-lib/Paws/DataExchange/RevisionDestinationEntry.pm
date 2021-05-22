# Generated by default/object.tt
package Paws::DataExchange::RevisionDestinationEntry;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has KeyPattern => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::RevisionDestinationEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::RevisionDestinationEntry object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., RevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::RevisionDestinationEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The destination where the assets in the revision will be exported.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The S3 bucket that is the destination for the assets in the revision.


=head2 KeyPattern => Str

A string representing the pattern for generated names of the individual
assets in the revision. For more information about key patterns, see
Key patterns when exporting revisions
(https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns).


=head2 B<REQUIRED> RevisionId => Str

The unique identifier for the revision.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

