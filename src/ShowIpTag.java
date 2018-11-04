
import javax.servlet.http.HttpServletRequest;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class ShowIpTag extends SimpleTagSupport{

    @Override
    public void doTag() throws JspException, IOException {
        //1)��ȡ�ͻ���ip
        PageContext pageContext = (PageContext)this.getJspContext();
        //2��ͨ��PageContext��ȡ������8�����ö���
        HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
        String ip = request.getRemoteHost();

        //3)��ip����������
        JspWriter out = pageContext.getOut();
        out.write("��ǰ�ͻ��˵�IPΪ��"+ip);

    }
}
