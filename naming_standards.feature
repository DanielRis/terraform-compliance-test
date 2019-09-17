Feature: Resources should have a proper naming standard
  In order to keep consistency between resources
  As engineers
  We'll enforce naming standards

  Scenario Outline: Naming Standard on all available resources
    Given I have <resource_name> defined
    When it contains <name_key>
    Then its value must match the "[a-z0-9]+-[a-z0-9]+-[a-z0-9]+-[a-z0-9]+" regex

    Examples:
    | resource_name           | name_key |
    | aws_s3_bucket           | bucket   |
    | aws_key_pair            | key_name |
    | aws_ecs_cluster         | name     |
