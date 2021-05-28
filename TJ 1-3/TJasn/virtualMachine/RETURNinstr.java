//Harjit Liyal
package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;

public class RETURNinstr extends OneOperandInstruction {

  void execute ()
  {
    /* ???????? */
    ASP = FP; 
    FP = TJ.data[(ASP--) - POINTERTAG];
    PC = TJ.data[ASP - POINTERTAG];
    ASP -= this.operand; 
  }

  public RETURNinstr (int operand)
  {
    super(operand, "RETURN");
  }
}

