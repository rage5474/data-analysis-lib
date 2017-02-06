import java.util.List
import org.apache.commons.math3.ml.distance.DistanceMeasure

class FarthestFirstCenters {
	
	private int k = 1
	private List<Pair<Double,Double>> data
	private List<Pair<Integer,Integer>> centers
	private DistanceMatrix matrix
	
	new(List<Pair<Double,Double>> vectors, int k, DistanceMeasure measure) {
		this.data = vectors
		this.k = k
		matrix = new DistanceMatrix(vectors, measure)
	}
	
	def findCenters(Integer start){
		
		return centers		
	}
	
}