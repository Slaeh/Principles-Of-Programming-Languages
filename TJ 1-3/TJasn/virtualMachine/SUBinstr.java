//Harjit Liyal
//I worked with Edward Paez & Abedin Kadir
package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.virtualMachine.VirtualMachineHaltException;
import TJasn.TJ;

public class SUBinstr extends ZeroOperandInstruction {

  void execute () throws VirtualMachineHaltException
  {
    /* ???????? */
    EXPRSTACK[--ESP-1] -= EXPRSTACK[ESP];

  }

  public SUBinstr ()
  {
    super("SUB");
  }
}

