Feature: Playwright Test Reporting
  As a developer
  I want to have test reports generated and saved automatically
  So that I can review test results and debug failures effectively

  Scenario: Run tests and generate an HTML report
    Given the Playwright configuration is set to use the "html" reporter
    And the HTML reporter is configured with "open: never"
    When I run the command "npm test"
    Then a directory named "playwright-report" should be created
    And an "index.html" file should exist within the "playwright-report" directory

  Scenario: View the generated test report
    Given a test report has been generated in the "playwright-report" directory
    When I run the command "npm run test:report"
    Then the Playwright report viewer should be started
