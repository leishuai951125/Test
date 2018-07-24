package com;

import java.io.*;
import java.net.Socket;
import java.util.Scanner;

/**
 * Created by leishuai on 2018/7/16.
 */
public class Client {
    Socket client=null;
    boolean stop=false;
    public Client() throws IOException {
        System.out.println("客户端：");
        client=new Socket("localhost",9999);
        System.out.println("链接成功");

        ObjectOutputStream output=new ObjectOutputStream(client.getOutputStream());
        output.flush();
        System.out.println("获取输出流成功");

        ObjectInputStream input=new ObjectInputStream(client.getInputStream());
        System.out.println("获取输入流成功\n");
        Scanner sc=new Scanner(System.in);
        while (!stop){
            String s=null;
            try {
                s=(String)input.readObject();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            System.out.println("来自服务的的消息："+s);

//            s=sc.next();
//            output.writeObject(s);
//            output.flush();
        }


    }
    public static void main(String [] args)
    {
        try {
            new Client();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
