package control.user;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class authFilter
 */
@WebFilter("/back/*")
public class authFilter extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public authFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        // Đường dẫn hiện tại
        String currentPath = httpRequest.getRequestURI();
        String loginPath = httpRequest.getContextPath() + "/front/Login.jsp";

        // Kiểm tra nếu người dùng chưa đăng nhập
        boolean isLoggedIn = (session != null && session.getAttribute("logUser") != null);
        boolean isLoginRequest = currentPath.equals(loginPath);
        boolean isStaticResource = currentPath.contains("/css/") || currentPath.contains("/js/");

        if (isLoggedIn || isLoginRequest || isStaticResource) {
            // Nếu đã đăng nhập hoặc đang truy cập trang login hoặc tài nguyên tĩnh, cho phép tiếp tục
            chain.doFilter(request, response);
        } else {
            // Nếu chưa đăng nhập, chuyển hướng về trang đăng nhập
            httpResponse.sendRedirect(loginPath);
        }
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
