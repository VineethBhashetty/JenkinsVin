package pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class countrypassPage {
	@FindBy(xpath="//input[@id='nameCountry']")
	private WebElement nameCountryField;
	
	@FindBy(xpath="//input[@id='emailCountry']")
	private WebElement emailCountryField;
	
	@FindBy(xpath="//input[@id='mobile1country']")
	private WebElement mobile1;
	@FindBy(xpath="//input[@id='mobile2country']")
	private WebElement mobile2;
	@FindBy(xpath="//input[@id='mobile3country']")
	private WebElement mobile3;
	
	@FindBy(xpath="//select[@id='Country']")
	private WebElement CountryfromdropDown;
	
	@FindBy(xpath="//input[@id='Gender_0']")
	private WebElement maleRadiobtn;
	
	@FindBy(xpath="//input[@id='Gender_1']")
	private WebElement femaleRadiobtn;
	
	@FindBy(xpath="//input[@id='Gender_2']")
	private WebElement othersRadiobtn;
	
	@FindBy(xpath="//input[@id='passport']")
	private WebElement passportField;
	@FindBy(xpath="//input[@id='virustest']")
	private WebElement virusCheckBox;
	
	@FindBy(xpath="//select[@id='reasonCountry']")
	private WebElement countryReasondropDown;
	
	@FindBy(xpath="//select[@id='countryTravelBy']")
	private WebElement countryTraveldropDown;
	
	
	@FindBy(xpath="//input[@id='members']")
	private WebElement MembersCountField;
	
	
	@FindBy(xpath="//input[@id='DateCountry']")
	private WebElement countryDateField;
	
	@FindBy(xpath="//textarea[@id='textareaCountry']")
	private WebElement countryTextareaField;
	
	@FindBy(xpath="//input[@id='countrySubmit']")
	private WebElement submitbtn;
	
	public countrypassPage (WebDriver driver) {
		PageFactory.initElements(driver, this);
	}
	public void nameField(String name) {
		nameCountryField.sendKeys(name);
	}
	
	public void EmailField(String email) {
		emailCountryField.sendKeys(email);
	}
	public void mobilebox1(String mob1) {
		mobile1.sendKeys(mob1);
	}
	public void mobilebox2(String mob2) {
		mobile2.sendKeys(mob2);
	}
	public void mobilebox3(String mob3) {
		mobile3.sendKeys(mob3);
	}
	public WebElement getCountryfromdropDown() {
		return CountryfromdropDown;
	}
	public void maleRadio() {
		maleRadiobtn.click();
	}
	public void femaleRadio() {
		femaleRadiobtn.click();
	}
	public void othersRadio() {
		othersRadiobtn.click();
	}
	public void passportnumber(String passportno) {
		passportField.sendKeys(passportno);
	}
	public void checkvirusbtn() {
		virusCheckBox.click();
	}
	public WebElement getIndiaReasondropDown() {
		return countryReasondropDown;
	}
	public WebElement getIndiaTraveldropDown() {
		return countryTraveldropDown;
	}
	public void memberCountbox(String count) {
		MembersCountField.sendKeys(count);
	}
	public void countryDate(String date) {
		countryDateField.sendKeys(date);
	}
	public void countryTextarea(String text) {
		countryTextareaField.sendKeys(text);
	}
	public void submitbtn() {
		submitbtn.click();
	}
}
