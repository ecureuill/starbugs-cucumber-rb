![alt text](.github/image.jpg)

# Starbugs Coffee Acceptance Test Automation

This project automates acceptance tests for the [Starbugs Coffee website](http://starbugs.vercel.app). It was created as part of the **BDD Discover** course at the [QaX school](http://www.qax.com.br).

## Test Reports

The project generates a comprehensive test report after each execution. You can find the report at the [project's github page](https://ecureuill.github.io/starbugs-cucumber-rb/report.html).

## Technologies Used

* **Cucumber:** A behavior-driven development (BDD) framework that allows you to write tests in a natural language.
* **Capybara:** A DSL for web automation
* **RSpec:** A testing framework for Ruby.
* **Selenium:**  WebDriver for browser automation

## Acceptance Tests

Acceptance tests verify that a software system meets the business requirements and user expectations. They are typically written in a natural language that is understandable to non-technical stakeholders.


## Project Structure

The project is structured using the Page Object Model (POM) pattern. The POM pattern organizes test code into logical units based on the pages of the application under test.

## Docker Containers

The project uses a Seleniumm Grid container to run the test on a remote browser.

**Selenium Grid:** A tool that allows you to run Selenium tests in parallel on multiple machines.

## Getting Started

To get started with the project, follow these steps:


1. Start the Selenium Grid container:

```bash

docker run --name selenium_firefox --rm  \
--net=mynet \  # (optional) docker network
--ip XXX.XX.X.XX \  # (optional) set an ip address
-p 4444:4444 \
selenium/standalone-chrome

```
2. Clone the project and install dependencies

```bash
# Clone the project repository:
git clone https://github.com/ecureuill/starbugs-cucumber-rb.git
# Move to directory
cd starbugs-cucumber-rb
# Install dependencies
bundle install
```
3. Create `env.yaml` on root directory
```yaml
#selenium grid
SELENIUM_HOST: localhost
SELENIUM_PORT: 4444

#tested app
BASE_URL: http://starbugs-qa.vercel.com
```
4.  Run test
```bash
bundle exec cucumber
```
