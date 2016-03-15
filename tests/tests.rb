require_relative "bookie_tests"
require_relative "games_tests"
require_relative "../tests/UsersTests"
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

  def test_Games
    bookieTest = BookieTests.new
    assert_equal(true, bookieTest.addBookie("Sérgio Simões", "123"), "Inserir um Bookie 1")
    gamesTest = GamesTests.new
    assert_equal(true,gamesTest.addGame(1,"slb","fcp","12-01-16","Sérgio Simões",bookieTest.bookies,1.1,1.2,1.2))
    assert_equal(false,gamesTest.addGame(1,"slb","fcp","12-01-16","Sérgio Simões",bookieTest.bookies,1.1,1.2,1.2))
  end

  def test_Users
    usersTest = UsersTests.new
    assert_equal(true,usersTest.addUser("Sérgio Simões","sergiohero@gmail.com","123",20.00),"Validar dados")
  end

end