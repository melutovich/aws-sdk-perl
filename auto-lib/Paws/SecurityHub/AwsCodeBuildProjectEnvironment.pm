package Paws::SecurityHub::AwsCodeBuildProjectEnvironment;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');
  has ImagePullCredentialsType => (is => 'ro', isa => 'Str');
  has RegistryCredential => (is => 'ro', isa => 'Paws::SecurityHub::AwsCodeBuildProjectEnvironmentRegistryCredential');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCodeBuildProjectEnvironment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCodeBuildProjectEnvironment object:

  $service_obj->Method(Att1 => { Certificate => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCodeBuildProjectEnvironment object:

  $result = $service_obj->Method(...);
  $result->Att1->Certificate

=head1 DESCRIPTION

Information about the build environment for this build project.

=head1 ATTRIBUTES


=head2 Certificate => Str

  The certificate to use with this build project.


=head2 ImagePullCredentialsType => Str

  The type of credentials AWS CodeBuild uses to pull images in your
build.

Valid values:

=over

=item *

C<CODEBUILD> specifies that AWS CodeBuild uses its own credentials.
This requires that you modify your ECR repository policy to trust the
AWS CodeBuild service principal.

=item *

C<SERVICE_ROLE> specifies that AWS CodeBuild uses your build project's
service role.

=back

When you use a cross-account or private registry image, you must use
C<SERVICE_ROLE> credentials. When you use an AWS CodeBuild curated
image, you must use C<CODEBUILD> credentials.


=head2 RegistryCredential => L<Paws::SecurityHub::AwsCodeBuildProjectEnvironmentRegistryCredential>

  The credentials for access to a private registry.


=head2 Type => Str

  The type of build environment to use for related builds.

The environment type C<ARM_CONTAINER> is available only in regions US
East (N. Virginia), US East (Ohio), US West (Oregon), Europe (Ireland),
Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Sydney), and
Europe (Frankfurt).

The environment type C<LINUX_CONTAINER> with compute type
build.general1.2xlarge is available only in regions US East (N.
Virginia), US East (N. Virginia), US West (Oregon), Canada (Central),
Europe (Ireland), Europe (London), Europe (Frankfurt), Asia Pacific
(Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific
(Sydney), China (Beijing), and China (Ningxia).

The environment type C<LINUX_GPU_CONTAINER> is available only in
regions US East (N. Virginia), US East (N. Virginia), US West (Oregon),
Canada (Central), Europe (Ireland), Europe (London), Europe
(Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific
(Singapore), Asia Pacific (Sydney) , China (Beijing), and China
(Ningxia).

Valid values: C<WINDOWS_CONTAINER> | C<LINUX_CONTAINER> |
C<LINUX_GPU_CONTAINER> | C<ARM_CONTAINER>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

