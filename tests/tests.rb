require_relative "bookie_tests"

require "test/unit"

class Tests < Test::Unit::TestCase

  def test_Bookies
    bookieTest = BookieTests.new
    assert_equal(true, bookieTest.addBookie("Sérgio Simões", "123"), "Inserir um Bookie 1")
    assert_equal(true, bookieTest.addBookie("David Rodriges", "1234"), "Inserir um Bookie 2")
    assert_equal(false, bookieTest.addBookie("Sérgio Simões", "123134"), "Inserir Bookie com username existente")

    assert_equal(false,bookieTest.remBookie("Zé da Esquina"),"Remover bookie inexistente")
    assert_equal(true,bookieTest.updateBookie("Sérgio Simões","Rodolfo Reis","123"))
  end
end