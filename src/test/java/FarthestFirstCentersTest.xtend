import java.util.List
import org.apache.commons.math3.ml.distance.EuclideanDistance
import org.junit.Assert
import org.junit.Test

class FarthestFirstCentersTest {
	
	var D = #[{2.0 -> 10.0}, {2.0 -> 5.0}, {8.0 -> 4.0}, {5.0 -> 8.0}, {7.0 -> 5.0}, {6.0 -> 4.0}, {1.0 -> 2.0}, {4.0 -> 9.0}, {9.0 -> 4.0}, {8.0 -> 2.0}]
	
	@Test
	def farthestFirstCentersTest(){
		val centers = (new FarthestFirstCenters(D, 3, new EuclideanDistance)).findCenters(6)
		D.plot(centers, 10, 10)
		Assert.assertTrue(centers.contains(1))
		Assert.assertTrue(centers.contains(9))
	}

	def plot(List<Pair<Double,Double>> data, List<Integer> centers, int dimX, int dimY){
		(1..dimY).forEach[y|
			(1..dimX).forEach[x|
				if(data.filter[it.equals(new Pair(x * 1.0, y * 1.0))].size > 0){
					if(centers.contains(data.indexOf(new Pair(x * 1.0, y * 1.0)))){
						print(" "+data.indexOf(new Pair(x * 1.0, y * 1.0)) + "x")
					}else{
						print("  " +data.indexOf(new Pair(x * 1.0, y * 1.0)))
					}
				}
				else{
					print("   ")
				}
			]
			print("\n")
		]
	}
}