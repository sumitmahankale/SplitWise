package com.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Expense {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private long amount;
    private String descp;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public String getDescp() {
        return descp;
    }

    public void setDescp(String descp) {
        this.descp = descp;
    }

    public Expense(int id, String name, long amount, String descp) {
        super();
        this.id = id;
        this.name = name;
        this.amount = amount;
        this.descp = descp;
    }

    public Expense() {
        super();
    }

    @Override
    public String toString() {
        return "Expense [id=" + id + ", name=" + name + ", amount=" + amount + ", descp=" + descp + "]";
    }
}
