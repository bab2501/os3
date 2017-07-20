/**
 * TopcalcServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.axis.wssample.ws.generated;

public class TopcalcServiceLocator extends org.apache.axis.client.Service implements org.axis.wssample.ws.generated.TopcalcService {

    public TopcalcServiceLocator() {
    }


    public TopcalcServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public TopcalcServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for topcalc
    private java.lang.String topcalc_address = "http://boktor.blaauwgeers.net:8099/axis/services/topcalc";

    public java.lang.String gettopcalcAddress() {
        return topcalc_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String topcalcWSDDServiceName = "topcalc";

    public java.lang.String gettopcalcWSDDServiceName() {
        return topcalcWSDDServiceName;
    }

    public void settopcalcWSDDServiceName(java.lang.String name) {
        topcalcWSDDServiceName = name;
    }

    public org.axis.wssample.ws.generated.Topcalc gettopcalc() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(topcalc_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return gettopcalc(endpoint);
    }

    public org.axis.wssample.ws.generated.Topcalc gettopcalc(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            org.axis.wssample.ws.generated.TopcalcSoapBindingStub _stub = new org.axis.wssample.ws.generated.TopcalcSoapBindingStub(portAddress, this);
            _stub.setPortName(gettopcalcWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void settopcalcEndpointAddress(java.lang.String address) {
        topcalc_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (org.axis.wssample.ws.generated.Topcalc.class.isAssignableFrom(serviceEndpointInterface)) {
                org.axis.wssample.ws.generated.TopcalcSoapBindingStub _stub = new org.axis.wssample.ws.generated.TopcalcSoapBindingStub(new java.net.URL(topcalc_address), this);
                _stub.setPortName(gettopcalcWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("topcalc".equals(inputPortName)) {
            return gettopcalc();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("urn:org.axis.topcalc", "TopcalcService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("urn:org.axis.topcalc", "topcalc"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("topcalc".equals(portName)) {
            settopcalcEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
