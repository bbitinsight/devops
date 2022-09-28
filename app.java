package test2;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class App {
    public static void main(String[] args) throws Exception {
		System.setProperty("webdriver.gecko.driver", "/Users/ravi/Downloads/geckodriver");
        System.out.println("Hello, World!");
        WebDriver driver =new FirefoxDriver();
        driver.get("https://www.google.com/");
        System.out.println(driver.getTitle());
        Thread.sleep(600);
        driver.quit();
    }
}
