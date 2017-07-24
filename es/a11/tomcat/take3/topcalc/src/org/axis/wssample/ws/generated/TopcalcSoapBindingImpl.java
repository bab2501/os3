/**
 * TopcalcSoapBindingImpl.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.axis.wssample.ws.generated;
package org.axis.wssample.Topcalcs;

public class TopcalcSoapBindingImpl implements org.axis.wssample.ws.generated.Topcalc{
    Topcalcs bab= new Topcalcs();
    public int sub(int in0, int in1) throws java.rmi.RemoteException {
        return bab.sub(in0, in1);
    }

    public int mul(int in0, int in1) throws java.rmi.RemoteException {
        return bab.mul(in0, in1);
    }

    public int add(int in0, int in1) throws java.rmi.RemoteException {
        return bab.add(in0, in1);
    }

}
