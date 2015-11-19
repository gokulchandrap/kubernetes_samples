package org.wso2.kube.sample.one;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import javax.servlet.http.HttpServlet;
import java.util.Map;

public class ServletOne extends HttpServlet {

    private static final Log log = LogFactory.getLog(ServletOne.class);
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException{

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException {
        doPost(request, response);
    }

}
