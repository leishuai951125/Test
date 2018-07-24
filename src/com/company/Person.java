package com.company;

/**
 * Created by leishuai on 2018/7/13.
 */
class A{
    int kk=1;

    public int getKk() {
        return kk;
    }

    public void setKk(int kk) {
        this.kk = kk;
    }
}
public class Person extends A{
    private String name;
    private int age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }



    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                "} " + super.toString();
    }
}
