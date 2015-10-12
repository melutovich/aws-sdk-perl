package Paws::Firehose::RedshiftDestinationUpdate;
  use Moose;
  has ClusterJDBCURL => (is => 'ro', isa => 'Str');
  has CopyCommand => (is => 'ro', isa => 'Paws::Firehose::CopyCommand');
  has Password => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
  has S3Update => (is => 'ro', isa => 'Paws::Firehose::S3DestinationUpdate');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::RedshiftDestinationUpdate

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::RedshiftDestinationUpdate object:

  $service_obj->Method(Att1 => { ClusterJDBCURL => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::RedshiftDestinationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterJDBCURL

=head1 ATTRIBUTES

=head2 ClusterJDBCURL => Str

  The database connection string.

=head2 CopyCommand => L<Paws::Firehose::CopyCommand>

  The C<COPY> command.

=head2 Password => Str

  The user password.

=head2 RoleARN => Str

  The ARN of the AWS credentials.

=head2 S3Update => L<Paws::Firehose::S3DestinationUpdate>

  The Amazon S3 destination.

The compression formats C<SNAPPY> or C<ZIP> cannot be specified in
C<RedshiftDestinationUpdate.S3Update> because the Amazon Redshift
C<COPY> operation that reads from the S3 bucket doesn't support these
compression formats.

=head2 Username => Str

  The name of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

