package lab;

import java.util.*;
public class Bell{ 
	static int n,src=0,dest;
	static int[] prev,dist; 
	static int[][] adj;
	public static void main(String[] args) {
		// TODO code application logic here 
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter number of nodes"); 
		n = sc.nextInt();
		adj = new int[n][n];
		System.out.println("Enter Adjacency Matrix"); 
		for (int i = 0; i< n; i++)
		for (int j = 0; j < n; j++) 
		adj[i][j] = sc.nextInt();
		for (int i = 0; i< n; i++,System.out.println())
		for (int j = 0; j < n; j++) 
		System.out.print(adj[i][j]+",");
//		System.out.println("Enter source vertex"); 
//		src = sc.nextInt();
//		System.out.println("Enter destination vertex"); 
//		dest = sc.nextInt();
		dist = new int[n]; 
		for (int i = 0; i< n; i++)
		dist[i] = 999; 
		dist[src] = 0;
		calc();
		System.out.println("Distance Vector from Node 1");
		for (int i = 0; i< n; i++) 
			System.out.println("Distance to " + (i + 1) + " is " + dist[i]);
		
		System.out.println();
	}

	static void calc() 
	{ 
		for (int i = 0; i< n - 1; i++) 
		{
			prev = (int[]) dist.clone(); 
			for (int j = 0; j < n; j++) {
				int min = 999; 
				for (int k = 0; k < n; k++) {
					if (min >adj[j][k] + prev[j]){ 
						min = adj[j][k] + prev[j];
					}
					System.out.println(min+"__"+adj[j][k]+"__"+prev[j]+"__");
				}
				dist[j] = min;
			}
		}
		
	}
}
