Feature: Should be able to send email
  Scenario: Send email
    Given an email with a subject "hello"
    And a body with the content "this is a sample email"
    When the email is delivered
    Then the email should have a subject "hello" and body "this is a sample email"
    And the email from is "tom@tom.com"
