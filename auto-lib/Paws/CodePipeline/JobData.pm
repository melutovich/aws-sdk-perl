package Paws::CodePipeline::JobData;
  use Moose;
  has actionConfiguration => (is => 'ro', isa => 'Paws::CodePipeline::ActionConfiguration');
  has actionTypeId => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeId');
  has artifactCredentials => (is => 'ro', isa => 'Paws::CodePipeline::AWSSessionCredentials');
  has continuationToken => (is => 'ro', isa => 'Str');
  has encryptionKey => (is => 'ro', isa => 'Paws::CodePipeline::EncryptionKey');
  has inputArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Artifact]');
  has outputArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Artifact]');
  has pipelineContext => (is => 'ro', isa => 'Paws::CodePipeline::PipelineContext');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::JobData

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::JobData object:

  $service_obj->Method(Att1 => { actionConfiguration => $value, ..., pipelineContext => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::JobData object:

  $result = $service_obj->Method(...);
  $result->Att1->actionConfiguration

=head1 ATTRIBUTES

=head2 actionConfiguration => L<Paws::CodePipeline::ActionConfiguration>

  

=head2 actionTypeId => L<Paws::CodePipeline::ActionTypeId>

  

=head2 artifactCredentials => L<Paws::CodePipeline::AWSSessionCredentials>

  

=head2 continuationToken => Str

  A system-generated token, such as a AWS CodeDeploy deployment ID, that
a job requires in order to continue the job asynchronously.

=head2 encryptionKey => L<Paws::CodePipeline::EncryptionKey>

  

=head2 inputArtifacts => ArrayRef[L<Paws::CodePipeline::Artifact>]

  The artifact supplied to the job.

=head2 outputArtifacts => ArrayRef[L<Paws::CodePipeline::Artifact>]

  The output of the job.

=head2 pipelineContext => L<Paws::CodePipeline::PipelineContext>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

