package lab;
import java.util.*;
public class LeakyBucket {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Bucket size and output speed");
		int size=sc.nextInt(),out=sc.nextInt(),pkt,buf=0;
		while(true){
			System.out.println("Enter Packet Size");
			pkt=sc.nextInt();
			if (pkt<0) return;
			if (pkt+buf>size)System.out.println("Packet Dropped");
			else buf+=pkt;
			if(buf-out<0){
				System.out.println(buf+" Bytes sent");
				buf=0;
			}
			else{
				buf-=out;
				System.out.println(out+" Bytes sent");
			}
			System.out.println("Buffer:"+buf+"/"+size+" Bytes");
}}}
