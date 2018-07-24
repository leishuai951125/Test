package com.company;

/**
 * Created by leishuai on 2018/7/11.
 */

public class entityA {
    private int year;
    private int month;
    private int data;

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getData() {
        return data;
    }

    public void setData(int data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "entityA{" +
                "year=" + year +
                ", month=" + month +
                ", data=" + data +
                '}';
    }

    public entityA() {
    }
}
