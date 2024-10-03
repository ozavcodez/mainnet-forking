// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
import "./interfaces/IUniswapV2Router.sol";
import "./interfaces/IERC20.sol";

contract AddLiquidity {

    address public uniswapRouter;
    address public owner;
    uint public swapCount;

    constructor(address _uniswapRouter) {
        uniswapRouter = _uniswapRouter;
        owner = msg.sender;
    }

    function handleAddLiquidity(
         address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external {

        // IERC20(path[0]).transferFrom(msg.sender, address(this), amountInMax);

        // require(IERC20(path[0]).approve(uniswapRouter, amountInMax), "approve failed.");
        
        IUniswapV2Router(uniswapRouter).addLiquidity(
            tokenA,
            tokenB,
            amountADesired,
            amountBDesired,
            amountAMin,
            amountBMin,
            to,
            deadline
        );

        swapCount += 1;
    }
}