package com.locker.management;

//*********************************************************************************************
//Developer Name - Aman Khaware
//Project Name - Company Locker Management Pvt. Ltd.
//Project Type - Assignment Phase 1
//Date :
//File Name - LockerMainFun.java
//**********************************************************************************************

import java.util.Scanner;


public class LockerMainFun {
	
	public static void main(String[] args) {
		
	
		int choice;
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			
			//Options
			System.out.println("\n ********************** Company Lockers Private Ltd. ******************************");
			System.out.println("1. Create a File ");
			System.out.println("2. To Delete a File ");
			System.out.println("3. To Search a File");
			System.out.println("4. For List Of Files");
			System.out.println("5. Exit ");
			System.out.println("\n **********************************************************************************");
			System.out.print("\nPlease enter your choice : ");
			choice = sc.nextInt();
			
			switch(choice) {
				
				case 1:
					
					//filename to be created
					System.out.print("\nPlease enter filename to be created: ");
					String fileToBeCreated = sc.next();
					
					//to create a specific file
					FileFunction.createFile(fileToBeCreated);
					break;

				
				case 2:
					
					//enter filename to be deleted
					System.out.print("\n Enter filename to be deleted: ");
					String fileToBeDeleted = sc.next();
					
					//delete a specific file 
					FileFunction.deleteFile(fileToBeDeleted);
					break;
				
				case 3:
					
					//filename to be searched
					System.out.print("\n Please enter filename to be searched: ");
					String fileToBeSearched = sc.next();
					
					//to search a specific file
					FileFunction.searchFile(fileToBeSearched);
					break;
				
				case 4:
					
					//list all files 
					FileFunction.listFiles();
					break;
					
				case 5:
					
					//Releasing scanner 
					sc.close();
					System.out.print("\n -------- Visit Again------");
					System.exit(1);
					break;
				
				default:
				
					System.out.print("\n ------- Enter an option between 1-5 --------");
					break;
				
					
				
			}		
			
		}
	}
}