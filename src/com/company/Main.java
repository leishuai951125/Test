package com.company;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println(Math.round(3.523));
        List list=new ArrayList();


    }
}
// List<int> list=new ArrayList<int>();
//class Arr{
//
//}
interface If<T>{
   void show(T t);
}
class CC<T> implements If<T>{
    CC(){

    }

    @Override
    public void show(T t) {

    }
}
//class B<T>{
//    private List<T> list=null;
//    B(){
//        list=new ArrayList<T>();
//    }
//    public List<T> add(T t){
//        list.add(t);
//        return list;
//    }
//    public T get(int index){
//        return list.get(index);
//    }
//    public void showAll(){
//        Iterator<T> iterator=list.iterator();
//        while (iterator.hasNext()){
//            System.out.println(iterator.next());
//        }
//    }
//}