//Student module
import java.util.*;
import java.io.*;
 class Details
{
	 int Student[][]=new Student[90][5];
	 
   public static void main(String args[])
   {
      
		
		Details st=new Details();
		int a1;
		System.out.println("Details  Section");
		System.out.println("Select choice: \n 1: Add \n 2: List \n 3: Edit");
		Scanner sc = new Scanner(System.in);
		a1 =sc.nextInt();
		switch (a1)
		{
			case 1:
			st.addStudentInfo();
			break;
			case 2:
			st.listStudent();
			break;
			//case 3:
			//st.editData();
			//break;
		}
		
	}
	public void addStudentInfo()
	{ String ID, name,DoB,Email,phoneNO;
	  Scanner sc=new Scanner(System.in);
	  System.out.println("\n Enter the student details");
      System.out.println("Enter the student ID");
	  ID=sc.next();
	  System.out.println("Enter the student name");
	  name=sc.next();
	  System.out.println("enter the date of birth");
	  DoB= sc.next();
	  System.out.println("Enter the Email addess of student");
	  Email=sc.next();
	  System.out.println("Enter the mobile phone number");
	  phoneNO=sc.next();

	try
	  {
	    FileWriter fw=new FileWriter("deep.txt",true);
		
			fw.write(ID+"\t"+name+"\t"+DoB+"\t"+Email+"\t"+phoneNO+"\t");
			fw.write(System.getProperty("line.separator"));
			fw.close();
		}
		catch(IOException e)
		{
		 e.printStackTrace();
		}
	   
	}

	public int listStudent()
	{
			 try
			 {
			String current="";
			BufferedReader br=new BufferedReader( new FileReader("deep.txt"));
			System.out.println("ID: \t Name \t DOB \t Address \t email \t Phone \t");

			while((current=br.readLine())!=null)
			{
			
				System.out.println(current);
			}
			 }
			  catch (IOException e)
			  {
			e.printStackTrace();
			  }
		return 0;
	}
	public void edit()
	{
		
	}
}				