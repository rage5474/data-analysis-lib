import java.util.List
import org.junit.Test
import org.junit.Assert
//import org.apache.commons.math3.ml.distance.EuclideanDistance
import org.apache.commons.math3.ml.distance.ManhattanDistance

class DistanceMatrixTest {
	
	@Test
	def distanceMatrixEuclideanTest(){
		
		var D = #[{2.0 -> 10.0}, {2.0 -> 5.0}, {8.0 -> 4.0}, {5.0 -> 8.0}, {7.0 -> 5.0}, {6.0 -> 4.0}, {1.0 -> 2.0}, {4.0 -> 9.0}, {9.0 -> 4.0}, {8.0 -> 2.0}]
		//D.plot(10, 10)
		
		val matrix = new DistanceMatrix(D, new ManhattanDistance)
		//matrix.plot
		Assert.assertTrue(matrix.getDistance(0,1).equals(5.0))
	}
	
	def plot(List<Pair<Integer,Integer>> data, int dimX, int dimY){
		(1..dimY).forEach[y|
			(1..dimX).forEach[x|
				if(data.filter[it.equals(new Pair(x, y))].size > 0){
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