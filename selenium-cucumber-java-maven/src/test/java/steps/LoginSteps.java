package steps;

import pages.AbstractPage;
import pages.LoginPage;
import utils.TestCaseFailed;
import io.cucumber.java.en.Given;
import org.junit.Assert;

public class LoginSteps extends AbstractPage {

    @Given("^I should get logged-in$")
    public void should_logged_in() throws NoSuchFieldException {
        final LoginPage loginPage = new LoginPage();
        Assert.assertEquals("You logged into a secure area!", loginPage.getMessage().getText().split("\n")[0].trim());
       
    }
    @Given("^Error message should be displayed for (.+) \\\"(.*?)\\\"$")
    public void error_display_() throws NoSuchFieldException, TestCaseFailed {
    	//final LoginPage loginPage = new LoginPage();
    	//checkElementText("id", "This is required.", "reg-error-lastName", true);
    	assertionObj.checkElementText("id", "This is required.aaa", "reg-error-lastName", true);
    }
}
