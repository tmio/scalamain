package io.tmio.scalamain

import org.scalatest.{FlatSpec, Matchers}

class MainSpec  extends FlatSpec with Matchers {
  
  "A main Scala object" should "execute" in {
    Main.main("io.tmio.scalamain.TestScalaMain", "run", "one more thing")
    TestScalaMain.executed.should == true
  }
}

object TestScalaMain {
  
  val executed: Boolean = false
  
  def run = {
    executed = true;
  }
  
}