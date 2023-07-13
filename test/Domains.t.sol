// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Domains.sol";


contract DomainsTest is Test {
    Domains public domains;
    address isaac = address(0x1);
    address valeria = address(0x2);

    function setUp() public {
        vm.startPrank(isaac);
        domains = new Domains();
    }

    function testRegister() public {
        domains.register("isaac");
        assertEq(domains.getAddress("isaac"), isaac);
    }

     function testRecord() public {
        domains.register("isaac");
        domains.setRecord("isaac", "Haha my domain now!");
        assertEq(domains.getRecord("isaac"), "Haha my domain now!");
    }

}
