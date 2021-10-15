import test.SolutionTest

fun main(args: Array<String>) {


    sol(args[0]).forEach {
        println(it)

    }


}

val sol: (String) -> Array<String> = { args ->
     args.split(" ").toTypedArray()
}



