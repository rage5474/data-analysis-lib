class Levenshtein {
	
	/**
	 * adaption of https://en.wikipedia.org/wiki/Levenshtein_distance c example
	 */
	def int characterDistance(String string1, String string2) {
	  var int cost

	  if (string1.length == 0) return string2.length
	  if (string2.length == 0) return string1.length
	
	  if (string1.charAt(string1.length-1).equals(string2.charAt(string2.length-1)))
	      {cost = 0;}
	  else
	      {cost = 1;}
	
	  return minimum(
	  			characterDistance(string1.substring(0, string1.length-1), string2) + 1,
                characterDistance(string1, string2.substring(0, string2.length -1)) + 1,
                characterDistance(string1.substring(0, string1.length-1), string2.substring(0, string2.length -1)) + cost
             )
	}
	
	def static minimum(int... args){
		val args_new = args.sort
		args_new.head
	}
	
	
}
