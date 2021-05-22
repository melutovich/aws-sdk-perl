# Generated by default/object.tt
package Paws::AuditManager::FrameworkMetadata;
  use Moose;
  has ComplianceType => (is => 'ro', isa => 'Str', request_name => 'complianceType', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Logo => (is => 'ro', isa => 'Str', request_name => 'logo', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::FrameworkMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::FrameworkMetadata object:

  $service_obj->Method(Att1 => { ComplianceType => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::FrameworkMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceType

=head1 DESCRIPTION

The metadata of a framework, such as the name, ID, description, and so
on.

=head1 ATTRIBUTES


=head2 ComplianceType => Str

The compliance standard associated with the framework, such as PCI-DSS
or HIPAA.


=head2 Description => Str

The description of the framework.


=head2 Logo => Str

The logo associated with the framework.


=head2 Name => Str

The name of the framework.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

