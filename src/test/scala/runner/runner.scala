package runner

import io.cucumber.junit.{Cucumber, CucumberOptions}
import org.junit.runner.RunWith
//Using junit with cucumber runner

@RunWith(classOf[Cucumber])
@CucumberOptions(
  features   = Array("src/test/resources/features"), //route to get the the feature file
  glue       = Array("stepdefs", "support"),
  plugin     = Array("pretty",
    "html:target/cucumber-report.html"), //repo generation to get the report
  monochrome = true
)
class runner // an empty class body is OK