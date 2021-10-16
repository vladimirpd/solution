fun main(args: Array<String>) {
    if (args.isNotEmpty())
        args[0].split(" ").sorted().forEach {
            println(it)
        }

}