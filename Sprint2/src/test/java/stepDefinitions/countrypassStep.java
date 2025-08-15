package stepDefinitions;

import java.io.FileNotFoundException;
import java.io.IOException;

import org.openqa.selenium.WebDriver;

import Hooks.Hooks;
import genericLibaries.ReadingDataPropertyFile;
import genericLibaries.WebDriverUtilies;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.countrypassPage;

public class countrypassStep {
	WebDriver driver=Hooks.driver;
	WebDriverUtilies wd=new WebDriverUtilies();
	ReadingDataPropertyFile Rpd = new ReadingDataPropertyFile();
	countrypassPage cp =new countrypassPage(driver);
	
	
	@Given("User is on Epass country form page")
	public void user_is_on_epass_country_form_page() throws FileNotFoundException, IOException {
	   driver.get(Rpd.getData("url"));
	}

	@When("User enters name {string}")
	public void user_enters_name(String name) throws InterruptedException {
	    cp.nameField(name);
	    Thread.sleep(1000);
	}

	@When("User enters email {string}")
	public void user_enters_email(String email) throws InterruptedException {
		Thread.sleep(1000);
	    cp.EmailField(email);
	}

	@When("User enters mobile number as {string}, {string}, {string}")
	public void user_enters_mobile_number_as(String mob1, String mob2, String mob3) throws InterruptedException {
		
	    cp.mobilebox1(mob1);
	    cp.mobilebox2(mob2);
	    cp.mobilebox3(mob3);
	    Thread.sleep(1000);
	}

	@When("User selects country from {string}")
	public void user_selects_country_from(String  dropdown ) throws InterruptedException {
		Thread.sleep(1000);
	   wd.dropDown(cp.getCountryfromdropDown(),  dropdown );
	   Thread.sleep(1000);
	}

	@When("User selects gender as {string}")
	public void user_selects_gender_as(String gender) {
		 if (gender.equalsIgnoreCase("Male")) {
		        cp.maleRadio();
		    } else if (gender.equalsIgnoreCase("Female")) {
		       cp.femaleRadio();
		    }else {
		    	cp.othersRadio();
		    }
	   
	}

	@When("User enters passport number {string}")
	public void user_enters_passport_number(String passport) {
	   cp.passportnumber(passport);
	}

	@When("User checks virus tested checkbox")
	public void user_checks_virus_tested_checkbox() {
	    cp.checkvirusbtn();
	}

	@When("User selects {string} and {string} mode")
	public void user_selects_reason_and_travel_mode(String reason ,String travel) throws InterruptedException {
		wd.dropDown(cp.getIndiaReasondropDown(),  reason );
		Thread.sleep(1000);
		wd.dropDown(cp.getIndiaTraveldropDown(),travel);
		Thread.sleep(1000);
	}

	@When("User enters members count {string}")
	public void user_enters_members_count(String count) {
	    cp.memberCountbox(count);
	}

	@When("User enters date {string}")
	public void user_enters_date(String date) {
	    cp.countryDate(date);
	}

	@When("User enters information in {string}")
	public void user_enters_information_in(String Anythingtosay  ) {
		cp.countryTextarea(Anythingtosay);
	    
	}

	@Then("User submits the form")
	public void user_submits_the_form() throws InterruptedException {
	   cp.submitbtn();
	   Thread.sleep(2000);
	}

}
