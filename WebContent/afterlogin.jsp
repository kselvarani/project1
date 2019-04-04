<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.calendar.js">  
 </script>  
 
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
* {box-sizing: border-box}

body{
background-image:url("file:///D://wallpaper4.jpg");
height:100%;
width:100%;
}

/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 33.3%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: 100%;
}

.row {
  display: flex;
}

/* Left column (menu) */
.left {
  flex: 35%;
  padding: 15px 0;
}

.left h2 {
  padding-left: 8px;
}

/* Right column (page content) */
.right {
  flex: 65%;
  padding: 15px;
}

/* Style the search box */
#mySearch {
  width: 100%;
  font-size: 18px;
  padding: 11px;
  border:1px solid #ddd;
}

/* Style the navigation menu inside the left column */
#myMenu {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myMenu li a {
  
  background-image:url("file:///D://wallpaper5.jfif");
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  color: black;
  display: block;
}

#myMenu li a:hover {
 background-color:white;
}

#IdeaSubmission {background-image:url("file:///D://wallpaper2.jfif");
  width: 600px;
  height:100%;
  padding: 50px;
  margin: auto;
  color:black;
}



#Event{
 color:white;
 
}

#GiveSuggestion {
  background-image:url("file:///D://wallpaper2.jfif");
  width: 600px;
  padding: 50px;
  margin: auto;
  color:black;
  height:100%;
}
input[type=text]{
width:100%;
padding:30px 30px;
box-sizing:border-box;
border:2px solid gray;
}
input[type=submit]{
width:30%;
color:white;
height:5%;
background-color:dodgerblue;
padding-top:10px;
float:right;
text-align:center;
font-size:15px;
}
input[type=submit]:hover{
background-color:powderblue;
}

</style>
</head>
<body>


<button class="tablink" onclick="openPage('IdeaSubmission', this, 'slateblue')">Idea Submission</button>
<button class="tablink" onclick="openPage('Event', this, 'slateblue')" id="defaultOpen">Event</button>
<button class="tablink" onclick="openPage('GiveSuggestion', this, 'slateblue')">Give Suggestion</button>


<div id="IdeaSubmission" class="tabcontent">

  <h2 style="text-align:center">Idea Submission</h2>
  <textarea rows="6" cols="50" name="Idea Submission" placeholder="Enter your idea"></textarea>
<br><br>
  <input type="submit" value="Share Data" >
</div>

<div id="Event" class="tabcontent">
 <div id="calendar"></div> 

</div>

<div id="GiveSuggestion" class="tabcontent">
<h2 style="text-align:center" >Give Suggestion</h2>
  <textarea rows="6" cols="50" name="Give Suggestion" placeholder="Enter your suggestion"></textarea><br><br>
  <input type="submit" value="Submit" >
</div>


<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<script>
function myFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("mySearch");
  filter = input.value.toUpperCase();
  ul = document.getElementById("myMenu");
  li = ul.getElementsByTagName("li");
  for (i = 0; i < li.length; i++) {
    a = li[i].getElementsByTagName("a")[0];
    if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
      li[i].style.display = "";
    } else {
      li[i].style.display = "none";
    }
  }
}

</script>

</body>
</html> 
