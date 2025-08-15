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

import pom.vaccinationPage;

public class vaccinationStep {
	WebDriver driver=Hooks.driver;
	WebDriverUtilies wd=new WebDriverUtilies();
	ReadingDataPropertyFile Rpd = new ReadingDataPropertyFile();
	vaccinationPage vp=new vaccinationPage(driver);

	@Given("User is on the vaccination form page")
	public void user_is_on_the_vaccination_form_page() throws FileNotFoundException, IOException, InterruptedException {
		driver.get(Rpd.getData("url2"));
		Thread.sleep(1000);
	}

	@When("User enters Name as {string}")
	public void user_enters_name_as(String name) {
	    vp.nametxtbox(name);
	}

	@When("User enters Email as {string}")
	public void user_enters_email_as(String email) {
	    vp.emailtxtbox(email);
	}

	@When("User enters Age as {string}")
	public void user_enters_age_as(String age) {
	    vp.agetxtbox(age);
	}

	@When("User enters Mobile as {string}, {string}, {string}")
	public void user_enters_mobile_as(String mob1, String mob2, String mob3) {
	    vp.mob1txtbox(mob1);
	    vp.mob2txtbox(mob2);
	    vp.mob3txtbox(mob3);
	}

	@When("User enters Address as {string}")
	public void user_enters_address_as(String address) {
	    vp.addresstxtbox(address);
	}

	@When("User selects Gender as {string}")
	public void user_selects_gender_as(String gender) {
		if (gender.equalsIgnoreCase("Male")) {
	        vp.gender_male();
	    } else if (gender.equalsIgnoreCase("Female")) {
	       vp.gender_female();
	    }else {
	    	vp.gender_others();
	    }
	}

	@When("User enters Aadhaar Number as {string}")
	public void user_enters_aadhaar_number_as(String aadhaar) {
	   vp.aadhaartxtbox(aadhaar);
	}

	@When("User click Sugar Level as {string}")
	public void user_click_sugar_level_as(String sugar) {
	    if(sugar.equalsIgnoreCase("normal")) {
	    	vp.sugarCheckbox();
	    }
	}

	@When("User chick Blood Pressure as {string}")
	public void user_chick_blood_pressure_as(String bp) {
		if(bp.equalsIgnoreCase("normal")) {
	    	vp.bpCheckbox();
	    }
	}


	@When("User clicks on Submit button")
	public void user_clicks_on_submit_button() throws InterruptedException {
	   vp.sbmtBtn();
	   Thread.sleep(1000);
	}

	@Then("form should be submitted succesfully")
	public void form_should_be_submitted_succesfully() {
	   System.out.println("successfully excuted");
	}


}
