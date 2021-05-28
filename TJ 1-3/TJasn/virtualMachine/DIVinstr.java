//Harjit Liyal
//I worked with Edward Paez & Abedin Kadir
package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class DIVinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* ???????? */
    EXPRSTACK[--ESP-1] /= EXPRSTACK[ESP];
  }

  public DIVinstr ()
  {
    super("DIV");
  }
}
