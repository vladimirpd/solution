fun main(args: Array<String>) {
    args[0].split(" ").sorted().groupingBy { it }.eachCount().map { "${it.key} = ${it.value}"}.forEach(::println)

}