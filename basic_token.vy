"""
@ pragma version 0.4.0
"""
from snekmate.auth import ownable as ow
from snekmate.tokens import erc20
initializes: ow
initializes: erc20[ownable := ow]

NAME: constant(String[25]) = "Mock WETH"
SYMBOL: constant(String[5]) = "MWETH"
DECIMALS: constant(uint8) = 18
EIP712_VERSION: constant(String[20]) = "1"

@deploy
def __init__():
    ow.__init__()
    erc20.__init__(NAME, SYMBOL, DECIMALS, NAME, EIP712_VERSION)

exports: erc20.__interface__