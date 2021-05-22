# Generated by default/object.tt
package Paws::MediaConnect::FmtpRequest;
  use Moose;
  has ChannelOrder => (is => 'ro', isa => 'Str', request_name => 'channelOrder', traits => ['NameInRequest']);
  has Colorimetry => (is => 'ro', isa => 'Str', request_name => 'colorimetry', traits => ['NameInRequest']);
  has ExactFramerate => (is => 'ro', isa => 'Str', request_name => 'exactFramerate', traits => ['NameInRequest']);
  has Par => (is => 'ro', isa => 'Str', request_name => 'par', traits => ['NameInRequest']);
  has Range => (is => 'ro', isa => 'Str', request_name => 'range', traits => ['NameInRequest']);
  has ScanMode => (is => 'ro', isa => 'Str', request_name => 'scanMode', traits => ['NameInRequest']);
  has Tcs => (is => 'ro', isa => 'Str', request_name => 'tcs', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::FmtpRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::FmtpRequest object:

  $service_obj->Method(Att1 => { ChannelOrder => $value, ..., Tcs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::FmtpRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelOrder

=head1 DESCRIPTION

The settings that you want to use to define the media stream.

=head1 ATTRIBUTES


=head2 ChannelOrder => Str

The format of the audio channel.


=head2 Colorimetry => Str

The format that is used for the representation of color.


=head2 ExactFramerate => Str

The frame rate for the video stream, in frames/second. For example:
60000/1001. If you specify a whole number, MediaConnect uses a ratio of
N/1. For example, if you specify 60, MediaConnect uses 60/1 as the
exactFramerate.


=head2 Par => Str

The pixel aspect ratio (PAR) of the video.


=head2 Range => Str

The encoding range of the video.


=head2 ScanMode => Str

The type of compression that was used to smooth the videoE<rsquo>s
appearance.


=head2 Tcs => Str

The transfer characteristic system (TCS) that is used in the video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

