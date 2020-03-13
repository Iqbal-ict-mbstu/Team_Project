<%@page import="javaCode.ProductNotify"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="header.jsp" %>


        <div class="col-sm-5 pull-left">
            </br></br></br></br>
            
        </div>

      

<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<!--JavaScript code for top button-->
<script>
// When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
        scrollFunction()
    };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("myBtn").style.display = "block";
        } else {
            document.getElementById("myBtn").style.display = "none";
        }
    }

// When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>

<%@ include file="footer.jsp" %>
