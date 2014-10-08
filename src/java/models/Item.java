/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author Alvin
 */
public class Item {
    private String name;
    private int quantity;
    private double weight;
    private double totalWeight;
    private String category;
    
    public Item(String name, int quantity, double weight, String category) {
        this.name = name;
        this.quantity = quantity;
        this.weight = weight;
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getWeight() {
        return weight;
    }

    public double getTotalWeight() {
        return quantity * weight;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public void setTotalWeight(double quantity, double weight) {
        this.totalWeight = quantity * weight;
    }

    @Override
    public String toString() {
        return "Item{" + "name=" + name + ", quantity=" + quantity + ", weight=" + weight + ", totalWeight=" + totalWeight + '}';
    }
    
    
}
