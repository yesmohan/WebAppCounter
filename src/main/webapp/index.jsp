<HTML>
<HEAD>
<TITLE>VAL-VIL ORI FARMS</TITLE>
</HEAD>

 <BODY background="kolli-hills.jpg">
        <%!
         private static int counter = 0;
         %>
        <%
          String visitor = ++counter + " :: We are growing , Thank you for your LOVE and SUPPORT";
        %>

	<SCRIPT>
		function validate() {
		if (document.forms[0].name.value=="") {
		alert("Please enter the search for an ITEM !");
		return false;
		}
		alert("Thank you :-) , We have the availabilty of your search item and it will be delivered soon !");
		return true;
		}
	</SCRIPT>
      
        <CENTER>
	<FORM onSubmit="return validate()">
         
		<P>
                <BR>
                <BR>
                <BR>
                        <FONT COLOR="WHITE" SIZE="7">WELCOME TO VAL-VIL ORI FARMS
                        <br>
			<FONT COLOR="WHITE" SIZE="5">|- from the blended nature of Kolli Hills -|
			<br><br>
			<FONT COLOR="WHITE" SIZE="6">search your item below
		        <br><br>
			<INPUT TYPE="text" NAME="name" size="30" VALUE="" style="height:25px; width:250px">
              
                <BR>
                <br>
			<INPUT TYPE=SUBMIT VALUE="SUBMIT" style="height:30px; width:70px">	
			<FONT COLOR=white SIZE=4>
                </P>
	</FORM>
        	<div style="position: relative">
                <p style="position: fixed; bottom: 0; width:100%; text-align: center" >
                   <strong> Contact us at [ val-vil-ori-farms@gmail.com ] <br><br>
                            The number of Visitors :: <%= visitor %> <br>
                            <% out.print(new java.util.Date()); %>
                   </strong> 
		</p>
        	</div>
        </CENTER>
 </BODY>
	
</HTML>
