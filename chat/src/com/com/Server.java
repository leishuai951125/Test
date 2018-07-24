package com.com;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

/**
 * Created by leishuai on 2018/7/16.
 */
public class Server {
    ServerSocket server=null;
    Socket client=null;
    boolean stop=false;

    public Server() throws IOException {
        System.out.println("服务端：");
        server=new ServerSocket(9999);
        System.out.println("服务器套接字创建成功");
        client=server.accept();
        System.out.println("获取客户联链接成功");
        ObjectOutputStream output=new ObjectOutputStream(client.getOutputStream());
        output.flush();
        System.out.println("获取输出流成功");
        ObjectInputStream input=new ObjectInputStream(client.getInputStream());
        System.out.println("获取输入流成功");
        output.writeObject("123");
        output.flush();

        Scanner sc=new Scanner(System.in);
        while(!stop){
            String s=sc.next();
            output.writeObject(s);
            output.flush();

            try {
                s=(String)input.readObject();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            System.out.println("来客户端的的消息："+s);
        }
    }
    public static void main(String [] args)
    {
        try {
            new Server();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
