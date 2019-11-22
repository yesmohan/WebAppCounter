<HTML>
<HEAD>
<TITLE>MK PETS</TITLE>
</HEAD>

<BODY background="kolli-hills.jpg">
	<SCRIPT>
		function validate() {
		if (document.forms[0].name.value=="") {
		alert("Please Enter the search for a PET !");
		return false;
		}
		alert("Thank-you , We have a the availabilty of your search category and it will be delivered soon !");
		return true;
		}
	</SCRIPT>

	<FORM onSubmit="return validate()">
		<P><BR><BR><BR>
		<FONT COLOR="yellow" SIZE="4">Enter to choose your PET now:
		<INPUT TYPE="text" NAME="name" size="35" VALUE="" >
		<BR><BR>
		<INPUT TYPE=SUBMIT VALUE="Submit">
		<BR>
		<B><FONT COLOR=YELLOW SIZE=4>
	</FORM>

</BODY>
	<%!
	 private static int counter = 0;
	 %>
	<%
	  String visitor = ++counter + " Visitors";
	%>
<p>Contact me at mkpets@gmail.com</p>
<p>The number of visitors is <%= visitor %></p>
<p><% out.print(new java.util.Date()); %></p>
</HTML>
