import org.junit.Test
import org.junit.Assert

class LevenshteinTest {
	
	@Test
	def algorithmWorks(){
		Assert.assertEquals(new Levenshtein().characterDistance("Tier", "Tor"), 2)
	}
}