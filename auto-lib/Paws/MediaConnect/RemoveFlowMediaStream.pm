
package Paws::MediaConnect::RemoveFlowMediaStream;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has MediaStreamName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'mediaStreamName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveFlowMediaStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/mediaStreams/{mediaStreamName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::RemoveFlowMediaStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveFlowMediaStream - Arguments for method RemoveFlowMediaStream on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveFlowMediaStream on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method RemoveFlowMediaStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveFlowMediaStream.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $RemoveFlowMediaStreamResponse = $mediaconnect->RemoveFlowMediaStream(
      FlowArn         => 'My__string',
      MediaStreamName => 'My__string',

    );

    # Results:
    my $FlowArn         = $RemoveFlowMediaStreamResponse->FlowArn;
    my $MediaStreamName = $RemoveFlowMediaStreamResponse->MediaStreamName;

    # Returns a L<Paws::MediaConnect::RemoveFlowMediaStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/RemoveFlowMediaStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow.



=head2 B<REQUIRED> MediaStreamName => Str

The name of the media stream that you want to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveFlowMediaStream in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

