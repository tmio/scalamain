package io.tmio.scalamain

object TestScalaMain {
  
  var executed: Boolean = false
  
  def run(args: Array[String]) {
    executed = args(0) == "one more thing";
  }
  
}