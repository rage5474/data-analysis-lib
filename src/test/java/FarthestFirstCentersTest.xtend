import org.apache.commons.math3.ml.distance.EuclideanDistance
import org.junit.Assert
import org.junit.Test

class FarthestFirstCentersTest {
	
	@Test
	def farthestFirstCentersTest(){
		
		var D = #[{2.0 -> 10.0}, {2.0 -> 5.0}, {8.0 -> 4.0}, {5.0 -> 8.0}, {7.0 -> 5.0}, {6.0 -> 4.0}, {1.0 -> 2.0}, {4.0 -> 9.0}, {9.0 -> 4.0}, {8.0 -> 2.0}]
		
		val centers = (new FarthestFirstCenters(D, 3, new EuclideanDistance)).findCenters(1)
		
		Assert.assertTrue(centers.contains(2.0 -> 5.0))
		Assert.assertTrue(centers.contains(8.0 -> 2.0))
	}
}