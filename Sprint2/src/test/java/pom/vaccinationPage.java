
package pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class vaccinationPage {
	@FindBy(id="nameVaccination")
	private WebElement nameField;
	@FindBy(id="emailVaccination")
	private WebElement emailField;
	@FindBy(id="ageVaccination")
	private WebElement ageField;
	@FindBy(xpath="//*[@id=\"mobileVaccination\"]")
	private WebElement mob1Field;
	@FindBy(xpath="//*[@id=\"vaccinationForm\"]/label[7]/input[2]")
	private WebElement mob2Field;
	@FindBy(xpath="//*[@id=\"vaccinationForm\"]/label[7]/input[3]")
	private WebElement mob3Field;
	@FindBy(id="address")
	private WebElement addressField;
	@FindBy(id="Gender_0")
	private WebElement malebox;
	@FindBy(id="Gender_1")
	private WebElement femalebox;
	@FindBy(id="Gender_2")
	private WebElement othersbox;
	@FindBy(id="aadhaarVaccination")
	private WebElement aadhaarField;
	@FindBy(id="sugar")
	private WebElement sugarbox;
	@FindBy(id="BP")
	private WebElement bpbox;
	@FindBy(id="vaccinationSubmit")
	private WebElement submitbtn;
	
	public vaccinationPage(WebDriver driver)
	{
		PageFactory.initElements(driver,this);
	}
	
	public void nametxtbox(String name) {
		nameField.sendKeys(name);
	}
	public void emailtxtbox(String email) {
		emailField.sendKeys(email);
	}
	public void agetxtbox(String age) {
		ageField.sendKeys(age);
	}
	public void mob1txtbox(String mob1) {
		mob1Field.sendKeys(mob1);
	}
	public void mob2txtbox(String mob2) {
		mob2Field.sendKeys(mob2);
	}
	public void mob3txtbox(String mob3) {
		mob3Field.sendKeys(mob3);
	}
	public void addresstxtbox(String address) {
		addressField.sendKeys(address);
	}
	public void gender_male() {
		malebox.click();
	}
	public void gender_female() {
		femalebox.click();
	}
	public void gender_others() {
		othersbox.click();
	}
	public void aadhaartxtbox(String aadhaar) {
		aadhaarField.sendKeys(aadhaar);
	}
	public void sugarCheckbox() {
		sugarbox.click();
	}
	public void bpCheckbox() {
		bpbox.click();
	}
	public void sbmtBtn() {
		submitbtn.click();
	}
}


