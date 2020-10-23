// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Counter {
    // storage
    uint256 private _count;
    uint256 private _step;
    uint256 private _start;

    constructor() public {
        _count = _start;
        _step = 1;
        _start = 0;
    }

    /*modifier becareful() {
      require(count>=0, "error : 'count' must be a positive value")
      _;
  }*/

    function inc() public {
        _count += _step;
    }

    function dec() public /*becareful*/
    {
        require(_count > 0, "decreasing beyond 0 is out of the blue");
        _count -= _step;
    }

    function getCount() public view returns (uint256) {
        return _count;
    }

    function setCount(uint256 count) public {
        _count = count;
    }

    function getStep() public view returns (uint256) {
        return _step;
    }

    function setStep(uint256 step) public {
        _step = step;
    }

    function reset() public {
        _count = _start;
    }
0 }
