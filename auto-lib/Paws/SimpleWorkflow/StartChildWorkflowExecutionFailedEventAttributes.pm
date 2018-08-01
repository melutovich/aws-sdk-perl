package Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', request_name => 'cause', traits => ['NameInRequest'], required => 1);
  has Control => (is => 'ro', isa => 'Str', request_name => 'control', traits => ['NameInRequest']);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => 'Int', request_name => 'decisionTaskCompletedEventId', traits => ['NameInRequest'], required => 1);
  has InitiatedEventId => (is => 'ro', isa => 'Int', request_name => 'initiatedEventId', traits => ['NameInRequest'], required => 1);
  has WorkflowId => (is => 'ro', isa => 'Str', request_name => 'workflowId', traits => ['NameInRequest'], required => 1);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', request_name => 'workflowType', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes object:

  $service_obj->Method(Att1 => { Cause => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::StartChildWorkflowExecutionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Cause

=head1 DESCRIPTION

Provides the details of the C<StartChildWorkflowExecutionFailed> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cause => Str

  The cause of the failure. This information is generated by the system
and can be useful for diagnostic purposes.

When C<cause> is set to C<OPERATION_NOT_PERMITTED>, the decision fails
because it lacks sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 Control => Str

  The data attached to the event that the decider can use in subsequent
workflow tasks. This data isn't sent to the child workflow execution.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<StartChildWorkflowExecution>
Decision to request this child workflow execution. This information can
be useful for diagnosing problems by tracing back the chain of events.


=head2 B<REQUIRED> InitiatedEventId => Int

  When the C<cause> is C<WORKFLOW_ALREADY_RUNNING>, C<initiatedEventId>
is the ID of the C<StartChildWorkflowExecutionInitiated> event that
corresponds to the C<StartChildWorkflowExecution> Decision to start the
workflow execution. You can use this information to diagnose problems
by tracing back the chain of events leading up to this event.

When the C<cause> isn't C<WORKFLOW_ALREADY_RUNNING>,
C<initiatedEventId> is set to C<0> because the
C<StartChildWorkflowExecutionInitiated> event doesn't exist.


=head2 B<REQUIRED> WorkflowId => Str

  The C<workflowId> of the child workflow execution.


=head2 B<REQUIRED> WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

  The workflow type provided in the C<StartChildWorkflowExecution>
Decision that failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

