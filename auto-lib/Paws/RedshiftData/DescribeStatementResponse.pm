
package Paws::RedshiftData::DescribeStatementResponse;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Database => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has Error => (is => 'ro', isa => 'Str');
  has HasResultSet => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has QueryParameters => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftData::SqlParameter]');
  has QueryString => (is => 'ro', isa => 'Str');
  has RedshiftPid => (is => 'ro', isa => 'Int');
  has RedshiftQueryId => (is => 'ro', isa => 'Int');
  has ResultRows => (is => 'ro', isa => 'Int');
  has ResultSize => (is => 'ro', isa => 'Int');
  has SecretArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::DescribeStatementResponse

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The cluster identifier.


=head2 CreatedAt => Str

The date and time (UTC) when the SQL statement was submitted to run.


=head2 Database => Str

The name of the database.


=head2 DbUser => Str

The database user name.


=head2 Duration => Int

The amount of time in nanoseconds that the statement ran.


=head2 Error => Str

The error message from the cluster if the SQL statement encountered an
error while running.


=head2 HasResultSet => Bool

A value that indicates whether the statement has a result set. The
result set can be empty.


=head2 B<REQUIRED> Id => Str

The identifier of the SQL statement described. This value is a
universally unique identifier (UUID) generated by Amazon Redshift Data
API.


=head2 QueryParameters => ArrayRef[L<Paws::RedshiftData::SqlParameter>]

The parameters for the SQL statement.


=head2 QueryString => Str

The SQL statement text.


=head2 RedshiftPid => Int

The process identifier from Amazon Redshift.


=head2 RedshiftQueryId => Int

The identifier of the query generated by Amazon Redshift. These
identifiers are also available in the C<query> column of the
C<STL_QUERY> system view.


=head2 ResultRows => Int

Either the number of rows returned from the SQL statement or the number
of rows affected. If result size is greater than zero, the result rows
can be the number of rows affected by SQL statements such as INSERT,
UPDATE, DELETE, COPY, and others.


=head2 ResultSize => Int

The size in bytes of the returned results.


=head2 SecretArn => Str

The name or Amazon Resource Name (ARN) of the secret that enables
access to the database.


=head2 Status => Str

The status of the SQL statement being described. Status values are
defined as follows:

=over

=item *

ABORTED - The query run was stopped by the user.

=item *

ALL - A status value that includes all query statuses. This value can
be used to filter results.

=item *

FAILED - The query run failed.

=item *

FINISHED - The query has finished running.

=item *

PICKED - The query has been chosen to be run.

=item *

STARTED - The query run has started.

=item *

SUBMITTED - The query was submitted, but not yet processed.

=back


Valid values are: C<"SUBMITTED">, C<"PICKED">, C<"STARTED">, C<"FINISHED">, C<"ABORTED">, C<"FAILED">, C<"ALL">
=head2 UpdatedAt => Str

The date and time (UTC) that the metadata for the SQL statement was
last updated. An example is the time the status last changed.


=head2 _request_id => Str


=cut

1;