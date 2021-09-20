fun main(args: Array<String>) {
    val list = args[0].split(" ").toTypedArray().sorted()
    val map = mutableMapOf<String, Int>()
    list.forEach {
        if (map.containsKey(it))
            map[it]?.plus(1)?.let { it1 -> map.replace(it, it1) }
        else map[it] = 1
    }

    map.forEach {
        println(it)
    }

}