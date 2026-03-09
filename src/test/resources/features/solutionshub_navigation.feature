Feature: EPAM Solutions Hub - Main navigation and content smoke validation
  As a QA engineer
  I want to validate the main tabs and core page behavior
  So that the most important website flows are stable

  Background:
    Given I open the EPAM Solutions Hub home page

  Scenario: TC1 - Main navigation tabs are visible
    Then the main navigation should contain tabs:
      | Solutions |
      | Assets    |
      | Guides    |
      | Blog      |
      | About     |

  Scenario: TC2 - Navigation to Solutions works
    When I open the "Solutions" tab
    Then the current URL should contain "solution"

  Scenario: TC3 - Navigation to Assets works
    When I open the "Assets" tab
    Then the current URL should contain "asset"

  Scenario: TC4 - Navigation to Guides works
    When I open the "Guides" tab
    Then the current URL should contain "guide"

  Scenario: TC9 - Solutions list is displayed
    When I open the "Solutions" tab
    Then at least one content card should be visible in the main section

  Scenario: TC14 - Assets list is displayed
    When I open the "Assets" tab
    Then at least one content card should be visible in the main section

  Scenario: TC18 - Guides list is displayed
    When I open the "Guides" tab
    Then at least one content card should be visible in the main section

  Scenario: TC8 - Active tab highlighting works
    Then each of these tabs should become active when opened:
      | Solutions |
      | Assets    |
      | Guides    |
      | Blog      |
      | About     |

  Scenario: TC31 - Visible images contain alt text
    Then all visible non-decorative images should have alt text

  Scenario: TC34 - Website is responsive on desktop, tablet, and mobile
    Then the layout should work on desktop tablet and mobile viewports
