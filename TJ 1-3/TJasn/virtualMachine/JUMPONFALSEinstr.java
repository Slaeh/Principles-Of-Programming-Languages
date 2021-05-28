//Harjit Liyal
//I worked with Edward Paez & Abedin Kadir
package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

public class JUMPONFALSEinstr extends OneOperandInstruction {

  void execute ()
  {
    /* ???????? */
    if(EXPRSTACK[--ESP] == 0){
       PC = this.operand; 
    }
  }

  public JUMPONFALSEinstr (int address)
  {
    super(address, "JUMPONFALSE");
  }
}

