import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const routerAddress = "0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D";

const UseSwapModule = buildModule("UseSwapModule", (m) => {

    const swap = m.contract("UseSwap", [routerAddress]);

    return { swap };
});

export default UseSwapModule;
