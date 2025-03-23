package com.trading.servlet;

import com.trading.ejb.StockTransactionBean;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/trade")
public class TradeServlet extends HttpServlet {
    @Inject
    private StockTransactionBean stockTransactionBean;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String stock = request.getParameter("stock");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String result = stockTransactionBean.executeTrade(stock, quantity);
        response.getWriter().write(result);
    }
}