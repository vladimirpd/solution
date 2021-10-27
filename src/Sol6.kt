fun main(args: Array<String>){
    val list : List<String>? = if (args.isEmpty()) readLine()?.split(" ")?.toList() else args.toList()
    if (list?.get(0) != "") { solution(list) }
}

fun solution(list: List<String>?){
    list?.groupingBy { it }?.eachCount()?.toSortedMap()?.toList()?.sortedByDescending { (_, value) -> value }?.toMap()
        ?.forEach {
            println(it.key + "=" + it.value)
        }
    }
