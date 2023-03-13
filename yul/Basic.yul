object "Basic" {
  code {
    datacopy(0, dataoffset("Runtime"), datasize("Runtime"))
    return(0, datasize("Runtime"))
  }
  object "Runtime" {
    code {
      let sum := add(3, 5)
      mstore(0x0, sum)
      return(0x0, 0x20)
    }
  }
}

// 60    0e 60    0d 60    00 39       60    0e 60    00 f3     fe      60    05 60    03 01  80   60    00 52     60    20 60    00 f3
// PUSH1 0e PUSH1 0d PUSH1 00 CODECOPY PUSH1 06 PUSH1 00 RETURN INVALID PUSH1 05 PUSH1 03 ADD DUP1 PUSH1 00 MSTORE PUSH1 20 PUSH1 00 RETURN
// CODECOPY(dataOffset=0x0e, offset=0x0d, size=0x00)
// RETURN(offset=0x0e, size=0x00)
// INVALID()
// ADD(05, 03) - stack 08
// DUP1 - stack 08 08 - непонятно, зачем
// MSTORE(offset=00, value=08)
// RETURN(0x0, 0x20)
