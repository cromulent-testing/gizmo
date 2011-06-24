Feature:
    As a behaviour driven developer
    In order to have a DRY, elegant and maintainable test suite
    I want 'gizmo' to do it's funky thing

  Scenario: search for something
    Given I'm on the Google Australia homepage
    When I search google for "gizmo"
    Then the first result title should contain the world "gizmo"
