package lab;
import java.util.*;
public class Real_LeakyBucket extends Thread{
	public static int size,out,pkt,buf=0;
	public volatile static int pack;
	public static Scanner sc=new Scanner(System.in);
	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		System.out.println("Enter Bucket size and output speed");
		size=sc.nextInt();
		out=sc.nextInt();
		Real_LeakyBucket thread=new Real_LeakyBucket();
		thread.start();
		while(true){
			Thread.sleep(3000);
			if(buf-out<0){
				System.out.println(buf+" Bytes sent");
				buf=0;
			}
			else{
				buf-=out;
				System.out.println(out+" Bytes sent");
			}
			pkt=pack;
			pack=0;
			if (pkt<0) return;
			if (pkt+buf>size){
				System.out.println("Packet Dropped");
			}
			else{
				buf+=pkt;
			}
			System.out.println("Buffer:"+buf+"/"+size+" Bytes");
		}
	}

	public void run(){
		System.out.println("Enter Packet Size");
		while(true){
			int temp;
			temp=sc.nextInt();
			pack=temp;
		}
	}
}
