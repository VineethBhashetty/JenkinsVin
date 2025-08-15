package runners;

import org.testng.annotations.Test;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
@Test
@CucumberOptions(features= {"src/test/resources/countrypass.feature"},
glue = {"stepDefinitions", "Hooks"},
tags=" @dateValidates"

)
public class TestRunner extends AbstractTestNGCucumberTests {

}