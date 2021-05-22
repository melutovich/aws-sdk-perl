# Generated by default/object.tt
package Paws::AuditManager::AssessmentControl;
  use Moose;
  has AssessmentReportEvidenceCount => (is => 'ro', isa => 'Int', request_name => 'assessmentReportEvidenceCount', traits => ['NameInRequest']);
  has Comments => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ControlComment]', request_name => 'comments', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EvidenceCount => (is => 'ro', isa => 'Int', request_name => 'evidenceCount', traits => ['NameInRequest']);
  has EvidenceSources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'evidenceSources', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Response => (is => 'ro', isa => 'Str', request_name => 'response', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::AssessmentControl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::AssessmentControl object:

  $service_obj->Method(Att1 => { AssessmentReportEvidenceCount => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::AssessmentControl object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentReportEvidenceCount

=head1 DESCRIPTION

The control entity that represents a standard or custom control used in
an AWS Audit Manager assessment.

=head1 ATTRIBUTES


=head2 AssessmentReportEvidenceCount => Int

The amount of evidence in the assessment report.


=head2 Comments => ArrayRef[L<Paws::AuditManager::ControlComment>]

The list of comments attached to the specified control.


=head2 Description => Str

The description of the specified control.


=head2 EvidenceCount => Int

The amount of evidence generated for the control.


=head2 EvidenceSources => ArrayRef[Str|Undef]

The list of data sources for the specified evidence.


=head2 Id => Str

The identifier for the specified control.


=head2 Name => Str

The name of the specified control.


=head2 Response => Str

The response of the specified control.


=head2 Status => Str

The status of the specified control.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

