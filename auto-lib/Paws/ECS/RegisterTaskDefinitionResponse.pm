
package Paws::ECS::RegisterTaskDefinitionResponse;
  use Moose;
  has taskDefinition => (is => 'ro', isa => 'Paws::ECS::TaskDefinition');


### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterTaskDefinitionResponse

=head1 ATTRIBUTES

=head2 taskDefinition => L<Paws::ECS::TaskDefinition>

  The full description of the registered task definition.


=cut

1;