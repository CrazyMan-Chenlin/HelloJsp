
import javax.servlet.http.HttpServletRequest;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class ShowIpTag extends SimpleTagSupport{

    @Override
    public void doTag() throws JspException, IOException {
        //1)获取客户端ip
        PageContext pageContext = (PageContext)this.getJspContext();
        //2）通过PageContext获取到其他8个内置对象
        HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
        String ip = request.getRemoteHost();

        //3)把ip输入给浏览器
        JspWriter out = pageContext.getOut();
        out.write("当前客户端的IP为："+ip);

    }
}
