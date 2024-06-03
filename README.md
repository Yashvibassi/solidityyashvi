The contract begins with SPDX-License-Identifier, which specifies the software license governing the contract's usage. Following that, pragma solidity 0.8.18 indicates the Solidity version compatibility for the contract's code.

Next, we introduce the YashviToken contract, which can alternatively be named as "MyToken" or any other preferred name. Within this contract, we declare three public variables: tokenName, tokenSymbol, and totalSupply. The tokenName and tokenSymbol represent the name and symbol of the token, respectively. The totalSupply variable tracks the total number of tokens in circulation. Additionally, we declare a mapping named balances, which associates addresses with their corresponding token balances.

Moving on to the mint function, it facilitates the creation of new tokens by increasing both the total supply and the balance of the specified address. The function parameters include an address parameter "to" representing the recipient's address and a value parameter indicating the number of tokens to mint. This function is accessible externally, allowing external entities to interact with the contract.

Within the mint function, totalSupply is incremented by the specified value, representing the addition of newly minted tokens to the total supply. Simultaneously, the balance of the recipient address (denoted by "to") is increased by the same value.

Similarly, the burn function is defined to enable the destruction of tokens. This function takes two parameters: "from," representing the address from which tokens will be burned, and "value," indicating the number of tokens to burn. 

The function begins with a requirement statement that ensures the address has sufficient balance to burn the specified amount of tokens; otherwise, it throws an error message indicating insufficient balance.

Upon meeting the balance requirement, the totalSupply is decremented by the specified value, reflecting the reduction in the total token supply. Additionally, the balance of the address from which tokens are being burned (denoted by "from") is decreased by the same value, reflecting the reduction in the address's token balance.
