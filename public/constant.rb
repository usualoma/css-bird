require 'dotenv'
Dotenv.load


JUMP_LAYERS=25

MESH_UNIT=30

BACKGROUND_HEIGHT=384
GROUND_HEIGHT=112
SCREEN_WIDTH=288
SCREEN_HEIGHT=BACKGROUND_HEIGHT + GROUND_HEIGHT

TUBE_WIDTH=52
TUBE_HEIGHT=320

TUBES = [
  {
    top:  200,
    left: 300,
    space: 70,
  },
  {
    top:  150,
    left: 500,
    space: 70,
  }
]
