
package Paws::AppSync::UpdateResolver;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has DataSourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceName', required => 1);
  has FieldName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fieldName', required => 1);
  has RequestMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestMappingTemplate', required => 1);
  has ResponseMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responseMappingTemplate');
  has TypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'typeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResolver');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateResolverResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateResolver - Arguments for method UpdateResolver on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResolver on the 
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateResolver.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResolver.

As an example:

  $service_obj->UpdateResolver(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> DataSourceName => Str

The new data source name.



=head2 B<REQUIRED> FieldName => Str

The new field name.



=head2 B<REQUIRED> RequestMappingTemplate => Str

The new request mapping template.



=head2 ResponseMappingTemplate => Str

The new response mapping template.



=head2 B<REQUIRED> TypeName => Str

The new type name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResolver in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

