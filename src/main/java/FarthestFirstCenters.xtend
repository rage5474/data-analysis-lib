import java.util.ArrayList
import java.util.List
import org.apache.commons.math3.ml.distance.DistanceMeasure

class FarthestFirstCenters {

	private int k = 3
	private List<Pair<Double, Double>> data
	private List<Integer> centers = new ArrayList<Integer>
	private DistanceMatrix matrix

	new(List<Pair<Double, Double>> vectors, int k, DistanceMeasure measure) {
		this.data = vectors
		this.k = k
		matrix = new DistanceMatrix(vectors, measure)
	}

	def findCenters(Integer start) {
		centers.add(start)

		if (k > 1)
			centers.add(matrix.getMaxIndex(start))

		if (k > 2) {
			while (centers.size < k) {
				val distanceSums = newArrayList()
				for (var i = 0; i < data.length; i++) {
					var distance = 0.0
					for (var j = 0; j < centers.size; j++) {
						distance = distance + matrix.getDistance(i, centers.get(j))
					}
					distanceSums.add(distance)
				}
				centers.add(distanceSums.maxIndex)
			}
		}

		return centers
	}

	def getDataIndex(Pair<Double, Double> vector) {
		data.indexOf(vector)
	}

	def maxIndex(List<Double> list) {
		return list.indexOf(list.max)
	}

}
