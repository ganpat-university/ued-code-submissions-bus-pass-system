# bus-pass-system
Bus Pass System is a dynamic web project. Java EE + MySQL + JSP is used to create this project. It includes Login Authentication Module, CRUD operation on database (MySQL) module.
Pre-requisites:-
  1.	Eclipse Web Development IDE
  2.	Tomcat Server
  3.	MySQL

Database:
  -> Admin Data:
      Field	     Type	         Null	  Key
      username	 varchar(20)	 YES	
      password	 varchar(20)	 YES	
      
  -> User Data:
      Field	        Type	        Null	 Key
      user_id	      int	          NO	   PRIMARY
      username	    varchar(20)	  YES	
      email	        varchar(300)	YES	
      phoneno	      varchar(20)	  YES	
      passwordData	varchar(20) 	YES	
  
  -> Pass Data:
      Field	      Type	        Null	 Key
      pass_id	    int	          NO	   PRIMARY
      fullname	  varchar(45)	  YES	
      dob	        varchar(20)	  YES	
      email	      varchar(355)	YES	
      mobileno	  varchar(45)	  YES	
      gender	    varchar(45)	  YES	
      occupation	varchar(45)	  YES	
      passtype	  varchar(45)	  YES	
      category	  varchar(45)	  YES	
      user_id	    int	          YES	
      root	      varchar(80)	  YES	
      addline1	  varchar(80)	  YES	
      orgname	    varchar(45)	  YES	
      orgaddress	varchar(80)	  YES	
      education  	varchar(45)	  YES	
      status    	varchar(45)	  YES	



      
