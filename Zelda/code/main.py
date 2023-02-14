import pygame, sys
from settings import *

class Game:
    def _init_(self):
        
        # general setup
        pygame.init()
        self.screen = pygame.display.set_mode((WIDTH,HEIGHT))
        self.clock = pygame.time.Clock()
        
        def run(self):
            while True:
                for event in pygame.event.get():
                    if event.type == pygame.QUIT:
                        pygame.quit()
                        sys.exit()
                        
                self.screen.fill('black')
                pygame.display.update()
                self.clock.tick(FPS)
                
if _name_ =='_main_':
    game = Game()
    game.run()
    