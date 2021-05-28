//Harjit Liyal
//I worked with Edward Paez & Abedin Kadir
package TJasn.virtualMachine;

import TJasn.TJ;

public class WRITESTRINGinstr extends TwoOperandInstruction {

  void execute ()
  {
    /* ???????? */
    for(int x = this.firstOperand; x <= this.secondOperand; x++){
      System.out.print((char)TJ.data[x]);
    }
  }

  public WRITESTRINGinstr (int startOffset, int endOffset)
  {
    super(startOffset, endOffset, "WRITESTRING");
  }
}

