package org.example.language_name

import org.scalatest.FlatSpec

class TrivialSpec extends FlatSpec{
  "this" should "always succeed" in {
    assertResult(42)(42)
  }
}
