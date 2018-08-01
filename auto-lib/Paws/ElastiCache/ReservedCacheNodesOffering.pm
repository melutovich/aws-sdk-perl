package Paws::ElastiCache::ReservedCacheNodesOffering;
  use Moose;
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::RecurringCharge]', request_name => 'RecurringCharge', traits => ['NameInRequest']);
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ReservedCacheNodesOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ReservedCacheNodesOffering object:

  $service_obj->Method(Att1 => { CacheNodeType => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ReservedCacheNodesOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeType

=head1 DESCRIPTION

Describes all of the attributes of a reserved cache node offering.

=head1 ATTRIBUTES


=head2 CacheNodeType => Str

  The cache node type for the reserved cache node.

The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.

=over

=item *

General purpose:

=over

=item *

Current generation:

B<T2 node types:> C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>

B<M3 node types:> C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

B<M4 node types:> C<cache.m4.large>, C<cache.m4.xlarge>,
C<cache.m4.2xlarge>, C<cache.m4.4xlarge>, C<cache.m4.10xlarge>

=item *

Previous generation: (not recommended)

B<T1 node types:> C<cache.t1.micro>

B<M1 node types:> C<cache.m1.small>, C<cache.m1.medium>,
C<cache.m1.large>, C<cache.m1.xlarge>

=back

=item *

Compute optimized:

=over

=item *

Previous generation: (not recommended)

B<C1 node types:> C<cache.c1.xlarge>

=back

=item *

Memory optimized:

=over

=item *

Current generation:

B<R3 node types:> C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

=item *

Previous generation: (not recommended)

B<M2 node types:> C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

=back

=back

B<Notes:>

=over

=item *

All T2 instances are created in an Amazon Virtual Private Cloud (Amazon
VPC).

=item *

Redis (cluster mode disabled): Redis backup/restore is not supported on
T1 and T2 instances.

=item *

Redis (cluster mode enabled): Backup/restore is not supported on T1
instances.

=item *

Redis Append-only files (AOF) functionality is not supported for T1 or
T2 instances.

=back

For a complete listing of node types and specifications, see Amazon
ElastiCache Product Features and Details
(http://aws.amazon.com/elasticache/details) and either Cache Node
Type-Specific Parameters for Memcached
(http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific)
or Cache Node Type-Specific Parameters for Redis
(http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific).


=head2 Duration => Int

  The duration of the offering. in seconds.


=head2 FixedPrice => Num

  The fixed price charged for this offering.


=head2 OfferingType => Str

  The offering type.


=head2 ProductDescription => Str

  The cache engine used by the offering.


=head2 RecurringCharges => ArrayRef[L<Paws::ElastiCache::RecurringCharge>]

  The recurring price charged to run this reserved cache node.


=head2 ReservedCacheNodesOfferingId => Str

  A unique identifier for the reserved cache node offering.


=head2 UsagePrice => Num

  The hourly price charged for this offering.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

