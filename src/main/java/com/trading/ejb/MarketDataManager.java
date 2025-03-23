package com.trading.ejb;

import javax.ejb.Singleton;
import java.util.HashMap;
import java.util.Map;

@Singleton
public class MarketDataManager {
    private final Map<String, Double> stockPrices = new HashMap<>();

    public void updateStockPrice(String stock, double price) {
        stockPrices.put(stock, price);
    }

    public Double getStockPrice(String stock) {
        return stockPrices.get(stock);
    }
}