/**
 * TopcalcService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.axis.wssample.ws.generated;

public interface TopcalcService extends javax.xml.rpc.Service {
    public java.lang.String gettopcalcAddress();

    public org.axis.wssample.ws.generated.Topcalc gettopcalc() throws javax.xml.rpc.ServiceException;

    public org.axis.wssample.ws.generated.Topcalc gettopcalc(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
