import test.SolutionTest

fun main(args: Array<String>) {


    if (args.isNotEmpty())
        args[0].split(" ").toTypedArray().forEach {
            println(it)
        }
}
