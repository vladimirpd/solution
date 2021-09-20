fun main(args: Array<String>) {
    if (args.isNotEmpty())
        args[0].split(" ").toTypedArray().sorted().forEach {
            println(it)
        }

}