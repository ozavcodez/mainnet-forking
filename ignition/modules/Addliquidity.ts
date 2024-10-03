import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const routerAddress = "0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D";

const AddLiquidityModule = buildModule("AddLiquidityModule", (m) => {

    const save = m.contract("AddLiquidity", [routerAddress]);

    return { save };
});

export default AddLiquidityModule;

// Deployed SaveERC20: 0xD410219f5C87247d3F109695275A70Da7805f1b1

// SaveErc20 0x7e3f9F274131817d2D2F7d98e2D4A5D474Dd5896