package org.axis.wsclient;

import org.axis.wssample.ws.generated.Topcalc;

public class TopcalcClient {
	public static void main(String[] args) throws Exception {
		TopcalcService service = new TopcalcServiceLocator();
		Topcalc bab = service.gettopcalc();
		System.out.println("2501 + 1991" + bab.add(2501, 1991));
		System.out.println("2501 - 1991" + bab.sub(2501, 1991));
		System.out.println("2501 * 1991" + bab.mul(2501, 1991));
	}
}
