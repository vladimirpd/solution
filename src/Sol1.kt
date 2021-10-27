fun main(args: Array<String>) {
    println(args[0])
    if (args.isNotEmpty())
        args[0].split(" ").forEach(::println)
}



