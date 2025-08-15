package genericLibaries;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ReadingDataPropertyFile {
	public String getData(String key) throws FileNotFoundException, IOException {
		Properties properties =new Properties();
		properties.load(new FileInputStream("./src/test/resources/data.properties"));
		return properties.getProperty(key);
	}
}
