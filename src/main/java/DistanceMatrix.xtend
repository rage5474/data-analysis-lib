import java.util.List
import org.apache.commons.math3.ml.distance.DistanceMeasure

class DistanceMatrix {
	
	private var matrix = newArrayList()
	
	new(List<Pair<Double,Double>> vectors, DistanceMeasure measure){
		vectors.forEach[currentVector|
			matrix.add(vectors.map[measure.compute(#[currentVector.key, currentVector.value], #[it.key, it.value])])
		]
	}
	
	def getDistance(int from, int to){
		return (matrix.get(from) as List<Double>).get(to)
	}
	
	def plot(){
		matrix.forEach[
			(it as List<Double>).forEach[print(it + "\t")]
			println
		]
	}
	
	def getMaxIndex(int index) {
		(matrix.get(index) as List<Double>).indexOf((matrix.get(index) as List<Double>).max)
	}
	
}