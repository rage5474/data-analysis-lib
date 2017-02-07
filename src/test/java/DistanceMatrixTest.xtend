import java.util.List
import org.apache.commons.math3.ml.distance.EuclideanDistance
import org.junit.Assert
import org.junit.Test

class DistanceMatrixTest {
		
	
	private static var D = #[{2.0 -> 10.0}, {2.0 -> 5.0}, {8.0 -> 4.0}, {5.0 -> 8.0}, {7.0 -> 5.0}, {6.0 -> 4.0}, {1.0 -> 2.0}, {4.0 -> 9.0}, {9.0 -> 4.0}, {8.0 -> 2.0}]
	private static val matrix = new DistanceMatrix(D, new EuclideanDistance)
	
	
	@Test
	def distanceMatrixEuclideanTest(){
		D.plot(10, 10)
		matrix.plot
		Assert.assertTrue(matrix.getDistance(0,1).equals(5.0))
	}
	
	@Test
	def getMaxIndexTest(){
		Assert.assertTrue(matrix.getMaxIndex(0).equals(9))
	}
	
	def plot(List<Pair<Double,Double>> data, int dimX, int dimY){
		(1..dimY).forEach[y|
			(1..dimX).forEach[x|
				if(data.filter[it.equals(new Pair(x * 1.0, y * 1.0))].size > 0){
					print("  *")
				}
				else{
					print("   ")
				}
			]
			print("\n")
		]
	}
}