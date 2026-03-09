## Quick test run

Small Selenium + Cucumber test project for `https://solutionshub.epam.com/`.

1. Open terminal in this folder.
2. Run all tests (headless):
   ```bash
   sh gradlew clean test --no-daemon
   ```
3. Run with visible browser:
   ```bash
   sh gradlew clean test -Dheadless=false --no-daemon
   ```
4. If browser closes too fast, add pause (5 sec):
   ```bash
   sh gradlew clean test -Dheadless=false -Dpause.ms=5000 --no-daemon
   ```

Reports:
- `build/reports/tests/test/index.html`
- `build/reports/cucumber/cucumber.html`
