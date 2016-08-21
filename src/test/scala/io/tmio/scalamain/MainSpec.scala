package io.tmio.scalamain

import org.scalatest.{FlatSpec, Matchers}

class MainSpec extends FlatSpec with Matchers {
  
  "A main Scala object" should "execute" in {
    Main.main(Array("io.tmio.scalamain.TestScalaMain", "run", "one more thing"))
    TestScalaMain.executed.shouldBe(true)
  }
}

