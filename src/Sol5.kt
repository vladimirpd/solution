fun main(args: Array<String>) {
    args[0].split(" ").sorted().groupingBy { it }.eachCount()
        .toList().sortedByDescending { (_, value) -> value }.toMap()
        .forEach { println(it.key + " " + it.value) }
}