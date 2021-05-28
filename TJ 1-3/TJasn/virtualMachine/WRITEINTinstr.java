//Harjit Liyal
//I worked with Edward Paez & Abedin Kadir
package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class WRITEINTinstr extends ZeroOperandInstruction {

  void execute ()
  {
    /* ???????? */
    System.out.print(EXPRSTACK[--ESP]);
  }

  public WRITEINTinstr ()
  {
    super("WRITEINT");
  }
}

