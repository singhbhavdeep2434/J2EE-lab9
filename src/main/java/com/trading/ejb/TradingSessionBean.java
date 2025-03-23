package com.trading.ejb;

import javax.ejb.Stateful;

@Stateful
public class TradingSessionBean {
    private String user;

    public void startSession(String user) {
        this.user = user;
    }

    public String getUser() {
        return user;
    }
}