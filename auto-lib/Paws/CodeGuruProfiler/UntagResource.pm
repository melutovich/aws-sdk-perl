
package Paws::CodeGuruProfiler::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'tagKeys', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::UntagResource - Arguments for method UntagResource on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $UntagResourceResponse = $codeguru -profiler->UntagResource(
      ResourceArn => 'MyProfilingGroupArn',
      TagKeys     => [ 'MyString', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that contains the tags
to remove.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag keys. Existing tags of resources with keys in this list
are removed from the specified resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

