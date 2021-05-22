# Generated by default/object.tt
package Paws::AuditManager::AssessmentEvidenceFolder;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', request_name => 'assessmentId', traits => ['NameInRequest']);
  has AssessmentReportSelectionCount => (is => 'ro', isa => 'Int', request_name => 'assessmentReportSelectionCount', traits => ['NameInRequest']);
  has Author => (is => 'ro', isa => 'Str', request_name => 'author', traits => ['NameInRequest']);
  has ControlId => (is => 'ro', isa => 'Str', request_name => 'controlId', traits => ['NameInRequest']);
  has ControlName => (is => 'ro', isa => 'Str', request_name => 'controlName', traits => ['NameInRequest']);
  has ControlSetId => (is => 'ro', isa => 'Str', request_name => 'controlSetId', traits => ['NameInRequest']);
  has DataSource => (is => 'ro', isa => 'Str', request_name => 'dataSource', traits => ['NameInRequest']);
  has Date => (is => 'ro', isa => 'Str', request_name => 'date', traits => ['NameInRequest']);
  has EvidenceAwsServiceSourceCount => (is => 'ro', isa => 'Int', request_name => 'evidenceAwsServiceSourceCount', traits => ['NameInRequest']);
  has EvidenceByTypeComplianceCheckCount => (is => 'ro', isa => 'Int', request_name => 'evidenceByTypeComplianceCheckCount', traits => ['NameInRequest']);
  has EvidenceByTypeComplianceCheckIssuesCount => (is => 'ro', isa => 'Int', request_name => 'evidenceByTypeComplianceCheckIssuesCount', traits => ['NameInRequest']);
  has EvidenceByTypeConfigurationDataCount => (is => 'ro', isa => 'Int', request_name => 'evidenceByTypeConfigurationDataCount', traits => ['NameInRequest']);
  has EvidenceByTypeManualCount => (is => 'ro', isa => 'Int', request_name => 'evidenceByTypeManualCount', traits => ['NameInRequest']);
  has EvidenceByTypeUserActivityCount => (is => 'ro', isa => 'Int', request_name => 'evidenceByTypeUserActivityCount', traits => ['NameInRequest']);
  has EvidenceResourcesIncludedCount => (is => 'ro', isa => 'Int', request_name => 'evidenceResourcesIncludedCount', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has TotalEvidence => (is => 'ro', isa => 'Int', request_name => 'totalEvidence', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::AssessmentEvidenceFolder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AuditManager::AssessmentEvidenceFolder object:

  $service_obj->Method(Att1 => { AssessmentId => $value, ..., TotalEvidence => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AuditManager::AssessmentEvidenceFolder object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentId

=head1 DESCRIPTION

The folder in which AWS Audit Manager stores evidence for an
assessment.

=head1 ATTRIBUTES


=head2 AssessmentId => Str

The identifier for the specified assessment.


=head2 AssessmentReportSelectionCount => Int

The total count of evidence included in the assessment report.


=head2 Author => Str

The name of the user who created the evidence folder.


=head2 ControlId => Str

The unique identifier for the specified control.


=head2 ControlName => Str

The name of the control.


=head2 ControlSetId => Str

The identifier for the control set.


=head2 DataSource => Str

The AWS service from which the evidence was collected.


=head2 Date => Str

The date when the first evidence was added to the evidence folder.


=head2 EvidenceAwsServiceSourceCount => Int

The total number of AWS resources assessed to generate the evidence.


=head2 EvidenceByTypeComplianceCheckCount => Int

The number of evidence that falls under the compliance check category.
This evidence is collected from AWS Config or AWS Security Hub.


=head2 EvidenceByTypeComplianceCheckIssuesCount => Int

The total number of issues that were reported directly from AWS
Security Hub, AWS Config, or both.


=head2 EvidenceByTypeConfigurationDataCount => Int

The number of evidence that falls under the configuration data
category. This evidence is collected from configuration snapshots of
other AWS services such as Amazon EC2, Amazon S3, or IAM.


=head2 EvidenceByTypeManualCount => Int

The number of evidence that falls under the manual category. This
evidence is imported manually.


=head2 EvidenceByTypeUserActivityCount => Int

The number of evidence that falls under the user activity category.
This evidence is collected from AWS CloudTrail logs.


=head2 EvidenceResourcesIncludedCount => Int

The amount of evidence included in the evidence folder.


=head2 Id => Str

The identifier for the folder in which evidence is stored.


=head2 Name => Str

The name of the specified evidence folder.


=head2 TotalEvidence => Int

The total amount of evidence in the evidence folder.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

