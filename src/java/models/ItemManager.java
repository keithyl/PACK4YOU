/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author Alvin
 */
public class ItemManager {
    
    private ArrayList<Item> itemList1;
    private ArrayList<Item> itemList2;
    private String startDate;
    private String endDate;
    private String season;
    private String weather;
    private String country;
    
    public ItemManager() {
        itemList1 = new ArrayList<Item>();
        itemList2 = new ArrayList<Item>();
        Item i1 = new Item("shirts", 8, 0.3, "clothes");
	Item i2 = new Item("shorts", 4, 0.3, "clothes");
	Item i3 = new Item("jeans", 4, 0.4, "clothes");
	Item i4 = new Item("shoes", 2, 0.8, "clothes");
        Item i5 = new Item("undergarments", 10, 0.2, "clothes");
	Item i6 = new Item("chargers", 2, 0.2, "electronics");
        Item i7 = new Item("slippers", 1, 0.2, "clothes");
        Item i8 = new Item("panadol box", 1, 0.1, "medication" );
        Item i9 = new Item("toiletries box", 1, 0.7, "hygiene");
        Item i10 = new Item("winter jacket", 2, 1.9, "clothes");
        Item i11 = new Item("scarf", 2, 0.3, "clothes");
        Item i12 = new Item("mufflers", 1, 0.6, "clothes");
        
        Item l1 = new Item("shirts", 8, 0.3, "clothes");
	Item l2 = new Item("shorts", 4, 0.3, "clothes");
	Item l3 = new Item("jeans", 4, 0.4, "clothes");
	Item l4 = new Item("shoes", 2, 0.8, "clothes");
        Item l5 = new Item("undergarments", 10, 0.2, "clothes");
	Item l6 = new Item("chargers", 2, 0.2, "electronics");
        Item l7 = new Item("slippers", 1, 0.2, "clothes");
        Item l8 = new Item("panadol box", 1, 0.1, "medication" );
        Item l9 = new Item("toiletries box", 1, 0.7, "hygiene");
        Item l10 = new Item("shades", 1, 0.2, "eyewear");
        Item l11 = new Item("singlet", 3, 0.3, "clothes");
        Item l12 = new Item("laptop", 1, 1.6, "electronics");
        
	itemList1.add(i1);
	itemList1.add(i2);
	itemList1.add(i3);
	itemList1.add(i4);
        itemList1.add(i5);
        itemList1.add(i6);
        itemList1.add(i7);
        itemList1.add(i8);
        itemList1.add(i9);
        itemList1.add(i10);
        itemList1.add(i11);
        itemList1.add(i12);
        
        itemList2.add(l1);
	itemList2.add(l2);
	itemList2.add(l3);
	itemList2.add(l4);
        itemList2.add(l5);
        itemList2.add(l6);
        itemList2.add(l7);
        itemList2.add(l8);
        itemList2.add(l9);
        itemList2.add(l10);
        itemList2.add(l11);
        itemList2.add(l12);
        
        this.season = season;
        this.weather = weather;
        startDate="08/23/2014";
        endDate="12/31/2014";  
        
    }
    
    public ArrayList<Item> retrieve(String country) {
        if(country.equalsIgnoreCase("Shanghai")) {
            return itemList1;
        }else if(country.equalsIgnoreCase("Melbourne")) {
            return itemList2;
        }
        return null;
    }
    
    public String getSeason(String country) {
        if(country.equalsIgnoreCase("Shanghai")) {
            return "winter";
        }else if(country.equalsIgnoreCase("Melbourne")) {
            return "summer";
        }
        return null;
    }
    
    public String getWeather(String country){ 
        if(country.equals("Shanghai")) {
            return "-5 to 3 degrees Celsius";
        }else if(country.equals("Melbourne")) {
            return "25 to 32 degrees Celsius";
        }
        return null;
    }
    
    public void add(String country, String name, int quantity, double weight, String category) {
        if(country.equals("Shanghai")) {
            itemList1.add(new Item(name, quantity, weight, category));
            
        }else if(country.equals("Melbourne")) {
            itemList2.add(new Item(name, quantity, weight, category));
        }
    }
        
        
    public void delete(String country, String name, int quantity, double weight, String category) {
        if(country.equals("Shanghai")) {
            Iterator iter = itemList1.iterator();
            while (iter.hasNext()) {
                Item item = (Item)iter.next();
                if(item.getName().equals(name) && item.getQuantity() == quantity && item.getWeight() == weight && item.getCategory().equals(category)) {
                  iter.remove();  
                }
            }
        }else if(country.equals("Melbourne")) {
            Iterator iter = itemList2.iterator();
            while (iter.hasNext()) {
                Item item = (Item)iter.next();
                if(item.getName().equals(name) && item.getQuantity() == quantity && item.getWeight() == weight && item.getCategory().equals(category)) {
                  iter.remove();  
                }
            }
        }
    }
    
    public Item retrieveItem(String country, String name) {
        if(country.equals("Shanghai")) {
            for(int i=0; i < itemList1.size(); i++){
                Item item = itemList1.get(i);
                if(item.getName().equals(name)) {
                    return item;
                }
            }
            return null;
        }else if(country.equals("Melbourne")) {
            for(int i=0; i < itemList2.size(); i++){
                Item item = itemList2.get(i);
                if(item.getName().equals(name)) {
                    return item;
                }
            }
            return null;
        }
        return null;
    }
    
    public void updateWeight(String country, String name, double weight) {
        if(country.equals("Shanghai")) {
            Item item = retrieveItem(country, name);
            item.setWeight(weight);
        }else if(country.equals("Melbourne")) {
            Item item = retrieveItem(country, name);
            item.setWeight(weight);
        }
    }
    
    public void updateQuantity(String country, String name, int quantity) {
        if(country.equals("Shanghai")) {
            Item item = retrieveItem(country, name);
            item.setQuantity(quantity);
        }else if(country.equals("Melbourne")) {
            Item item = retrieveItem(country, name);
            item.setQuantity(quantity);
        }
    }
    
}
