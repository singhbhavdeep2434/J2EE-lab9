package com.trading.ejb;

import javax.ejb.Stateless;

@Stateless
public class StockTransactionBean {
    public String executeTrade(String stock, int quantity) {
        return "Trade executed: " + stock + " x " + quantity;
    }
}