/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/**
 *
 * @author Alvin
 */
public class ItemManager {
    
    //when saving a packing list from generated packing list, add to this hashmap
    private HashMap<String,ArrayList<Item>> myPackingLists; 
    

    private ArrayList<Item> itemList1; //original packing list for Shanghai. Generated for cheuky
    private ArrayList<Item> itemList2; //original packing list for Melbourne. Also generated //Inspiration packing list example. Jenny's one. 
    private ArrayList<Item> cheukyShanghai; //This one is when cheukyBear is added and it is 10kg. For overweight purposes
    private ArrayList<Item> cheukyShanghai2; //This one is when cheukyBear is added and it is 5kg. To show within weight limit
    private ArrayList<Item> essentialItems; // This list contains the essential items of the user Cheuky


    private ArrayList<Item> pinkyShanghai; //Inspiration packing list for Jenny

    
    private String startDate;
    private String endDate;
    private String season;
    private String weather;
    private String country;
    private int publicLike;
    private boolean isLikePL;

    // when cheukyBear is added, it is under category essentials
    public ItemManager() {
        myPackingLists = new HashMap<> ();
        //myPackingLists.put("nil", new ArrayList<Item>());
        itemList1 = new ArrayList<>(); //List for Shanghai. generated
        itemList2 = new ArrayList<>(); //List for melbourne. generated
        pinkyShanghai = new ArrayList<>(); //Jenny's list
        essentialItems = new ArrayList<>(); // essential packing list
        
        publicLike = 856;
        
        Item i1 = new Item("Shirts", 8, 0.2, "clothes");
        Item i2 = new Item("Shorts", 4, 0.3, "clothes");
        Item i3 = new Item("Jeans", 4, 0.6, "clothes");
        Item i4 = new Item("Shoes", 2, 0.8, "clothes");
        Item i5 = new Item("Undergarments", 10, 0.2, "clothes");
        Item i6 = new Item("Chargers", 2, 0.2, "electronics");
        Item i7 = new Item("Slippers", 1, 0.3, "clothes");
        Item i8 = new Item("Panadol box", 1, 0.1, "medication");
        Item i9 = new Item("Toiletries box", 1, 0.7, "hygiene");
        Item i10 = new Item("winter jacket", 2, 1.9, "clothes");
        Item i11 = new Item("Scarf", 2, 0.3, "clothes");
        Item i12 = new Item("Mufflers", 1, 0.6, "clothes");
        Item i15 = new Item("Boarding Pass", 1, 0.1, "essentials");
        Item i16 = new Item("Laptop", 1, 1.5, "electronics");
        Item i17 = new Item("Toothbrush set", 1, 0.9, "hygiene");

        Item l1 = new Item("Shirts", 8, 0.3, "clothes");
        Item l2 = new Item("Shorts", 4, 0.3, "clothes");
        Item l3 = new Item("Jeans", 4, 0.4, "clothes");
        Item l4 = new Item("Shoes", 2, 0.8, "clothes");
        Item l5 = new Item("Undergarments", 10, 0.2, "clothes");
        Item l6 = new Item("Chargers", 2, 0.2, "electronics");
        Item l7 = new Item("Slippers", 1, 0.2, "clothes");
        Item l8 = new Item("Panadol Box", 1, 0.1, "medication");
        Item l9 = new Item("Toiletries Box", 1, 0.7, "hygiene");
        Item l10 = new Item("Shades", 1, 0.2, "eyewear");
        Item l11 = new Item("Sun-tan Lotion", 2, 0.2, "essentials");
        Item l12 = new Item("Laptop", 1, 1.6, "electronics");
        Item l13 = new Item("Boarding Pass", 1, 0.1, "essentials");

        cheukyShanghai = new ArrayList<>();
        cheukyShanghai2 = new ArrayList<>();
        

        Item i13 = new Item("socks", 1, 10, "clothing");
        Item i14 = new Item("socks", 3, 0.3, "clothing");

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
        
        cheukyShanghai2.add(i16);
        cheukyShanghai2.add(i17);
        
        cheukyShanghai.add(i1);
        cheukyShanghai.add(i2);
        cheukyShanghai.add(i3);
        cheukyShanghai.add(i4);
        cheukyShanghai.add(i5);
        cheukyShanghai.add(i6);
        cheukyShanghai.add(i7);
        cheukyShanghai.add(i8);
        cheukyShanghai.add(i9);
        cheukyShanghai.add(i10);
        cheukyShanghai.add(i11);
        cheukyShanghai.add(i12);
        cheukyShanghai.add(i13);
        
        cheukyShanghai2.add(i1);
        cheukyShanghai2.add(i2);
        cheukyShanghai2.add(i3);
        cheukyShanghai2.add(i4);
        cheukyShanghai2.add(i5);
        cheukyShanghai2.add(i6);
        cheukyShanghai2.add(i7);
        cheukyShanghai2.add(i8);
        cheukyShanghai2.add(i9);
        cheukyShanghai2.add(i10);
        cheukyShanghai2.add(i11);
        cheukyShanghai2.add(i12);
        cheukyShanghai2.add(i14);
        
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
        itemList2.add(l12);
        
        //essentialItems.add(l11);
        //essentialItems.add(l13);
        //essentialItems.add(i15);
        
        Item b10 = new Item("Passport", 1, 0.1, "essentials");
        Item b1 = new Item("Shirts", 8, 0.25, "clothes");
        Item b2 = new Item("Jeans", 8, 0.5, "clothes");
        Item b4 = new Item("Shoes", 2, 0.6, "clothes");
        Item b5 = new Item("Undergarments", 8, 0.2, "clothes");
        Item b6 = new Item("Slippers", 1, 0.2, "clothes");
        Item b13 = new Item("Jackets", 2, 1, "clothes");
        Item b8 = new Item("Boots", 2, 1, "clothes");
        Item b12 = new Item("Toiletries", 1, 0.5, "hygiene");
        Item b14 = new Item("Medicine Box", 1, 0.4, "medication");
        Item b9 = new Item("Laptop", 1, 3, "electronics");
        Item b7 = new Item("DSLR Camera", 1, 2.2, "electronics");
        Item b11 = new Item("Chargers", 3, 0.2, "electronics");

        pinkyShanghai.add(b10);
        pinkyShanghai.add(b1);
        pinkyShanghai.add(b2);
        pinkyShanghai.add(b4);
        pinkyShanghai.add(b5);
        pinkyShanghai.add(b6);
        pinkyShanghai.add(b13);
        pinkyShanghai.add(b8); 
        pinkyShanghai.add(b12);
        pinkyShanghai.add(b14);
        pinkyShanghai.add(b9);
        pinkyShanghai.add(b7);
        pinkyShanghai.add(b11);
       
        this.season = season;
        this.weather = weather;
        startDate = "08/23/2014";
        endDate = "12/31/2014";
        
        Item e1 = new Item("Cheuky Bear", 1, 0.5, "essentials");
        Item e2 = new Item("Yellow Blanket", 1, 0.4, "essentials");
        Item e3 = new Item("Hairspray", 1, 0.4, "essentials");
        
        essentialItems.add(e1);
        essentialItems.add(e2);
        essentialItems.add(e3);
        
        //add all items from essential items into every other list generated by user
        //for(int i=0;i<=essentialItems.size(); i++){
        //    itemList1.add(essentialItems.get(i));
        //    itemList2.add(essentialItems.get(i));
        //    cheukyShanghai.add(essentialItems.get(i));
        //    cheukyShanghai2.add(essentialItems.get(i));
        //}

    }

    public int likesNo(){
        return publicLike;
    }
    public boolean isLike(){
        return isLikePL;
    }
    
    public int disLike(){
        publicLike-=1;
        return publicLike;
    }
    
    public int addLike(){
        publicLike+=1;
        return publicLike;
    }
        
    public ArrayList<Item> retrieve(String country) {
        if (country.equalsIgnoreCase("Shanghai")) {
            return cheukyShanghai2;
        } else if (country.equalsIgnoreCase("Melbourne")) {
            return itemList2;
        //}else if (country.equalsIgnoreCase("pinkyShanghai")) {
        }else {
            return pinkyShanghai;
        }
        //return null;
    }
    
    public ArrayList<Item> retrieveEssentialList() {
        return essentialItems;
        //return null;
    }

    public String getSeason(String country) {
        if (country.equalsIgnoreCase("Shanghai")) {
            return "winter";
        } else if (country.equalsIgnoreCase("Melbourne")) {
            return "summer";
        }
        return null;
    }

    public String getWeather(String country) {
        if (country.equals("Shanghai")) {
            return "-5 to 3 degrees Celsius";
        } else if (country.equals("Melbourne")) {
            return "25 to 32 degrees Celsius";
        }
        return null;
    }

    public void add(String country, String name, int quantity, double weight, String category) {
        if (country.equals("Shanghai")) {
            itemList1.add(new Item(name, quantity, weight, category));

        } else if (country.equals("Melbourne")) {
            itemList2.add(new Item(name, quantity, weight, category));
        }
    }

    public void delete(String country, String name, int quantity, double weight, String category) {
        if (country.equals("Shanghai")) {
            Iterator iter = itemList1.iterator();
            while (iter.hasNext()) {
                Item item = (Item) iter.next();
                if (item.getName().equals(name) && item.getQuantity() == quantity && item.getWeight() == weight && item.getCategory().equals(category)) {
                    iter.remove();
                }
            }
        } else if (country.equals("Melbourne")) {
            Iterator iter = itemList2.iterator();
            while (iter.hasNext()) {
                Item item = (Item) iter.next();
                if (item.getName().equals(name) && item.getQuantity() == quantity && item.getWeight() == weight && item.getCategory().equals(category)) {
                    iter.remove();
                }
            }
        }
    }

    public Item retrieveItem(String country, String name) {
        if (country.equals("Shanghai")) {
            for (int i = 0; i < itemList1.size(); i++) {
                Item item = itemList1.get(i);
                if (item.getName().equals(name)) {
                    return item;
                }
            }
            return null;
        } else if (country.equals("Melbourne")) {
            for (int i = 0; i < itemList2.size(); i++) {
                Item item = itemList2.get(i);
                if (item.getName().equals(name)) {
                    return item;
                }
            }
            return null;
        } else if (country.equals("essentials")){
            for (int i=0; i<essentialItems.size(); i++){
                Item item = essentialItems.get(i);
                if (item.getName().equals(name))
                    return item;
            }
        }
        return null;
    }
     
    public void updateWeight(String country, String name, double weight) {
        if (country.equals("Shanghai")) {
            Item item = retrieveItem(country, name);
            item.setWeight(weight);
        } else if (country.equals("Melbourne")) {
            Item item = retrieveItem(country, name);
            item.setWeight(weight);
        } 
    }

    public void updateQuantity(String country, String name, int quantity) {
        if (country.equals("Shanghai")) {
            Item item = retrieveItem(country, name);
            item.setQuantity(quantity);
        } else if (country.equals("Melbourne")) {
            Item item = retrieveItem(country, name);
            item.setQuantity(quantity);
        }
    }
    
    public void AddPackList(String string, ArrayList<Item> list){
        myPackingLists.put(string, list);
    }
    
    public HashMap<String,ArrayList<Item>> retrievePackingList(){
        
        return myPackingLists;
    }
    
    public void updatePackingList(String country, ArrayList<Item> newPackingList) {
        if (country.equals("Shanghai")) {
            itemList1 = newPackingList;
        } else if (country.equals("Melbourne")) {
            itemList2 = newPackingList;
        }
    }
     
}
