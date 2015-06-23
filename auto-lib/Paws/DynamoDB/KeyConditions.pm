package Paws::DynamoDB::KeyConditions {
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has Map => (is => 'ro', isa => 'HashRef[Paws::DynamoDB::Condition]');
}
1
