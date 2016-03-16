require_relative './facade/system'
require_relative 'menu/menu'

#menu = Menu.new

#menu.home

system = System.new


### USERS ####
system.insertUser
system.insertUser
system.updateUser
system.showUser


### BOOKIES ###
system.insertBookie

### GAMES ###
system.insertGame
system.showGame

### BETS ###
system.insertBet
system.insertBet
system.showBet


### UPDATE GAME ###
system.updateGame
system.showUser
system.showGame


