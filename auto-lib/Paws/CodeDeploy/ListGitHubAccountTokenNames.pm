
package Paws::CodeDeploy::ListGitHubAccountTokenNames;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGitHubAccountTokenNames');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListGitHubAccountTokenNamesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListGitHubAccountTokenNames - Arguments for method ListGitHubAccountTokenNames on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGitHubAccountTokenNames on the 
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ListGitHubAccountTokenNames.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGitHubAccountTokenNames.

As an example:

  $service_obj->ListGitHubAccountTokenNames(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier returned from the previous ListGitHubAccountTokenNames
call. It can be used to return the next set of names in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGitHubAccountTokenNames in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

