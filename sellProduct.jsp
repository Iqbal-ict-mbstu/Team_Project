<%@ include file="header.jsp" %>
<h3  class=" col-sm-5 text-center">Sell Your Product</h3><br></br><br></br>
</div>

<div class="col-sm-6">
    <form action="SellProductServlet" class="form-inline"  method="post"  align = "center">
        <input class="form-control text-center"   value="Product Name" readonly>
        <input class="form-control text-center" value="Quantity" readonly><br></br>
        
        <div id="inputDiv" onchange="changeFunction()">
            <input name="pName1" type="text" class="form-control productName" placeholder="Enter product name" required>
            <input name="pQuantity1" type="number" step="any" class="form-control quantityCheck"  placeholder="Enter Quantity" required>
            <br/><br/>
            <input id="count" name="count" type="hidden" value="1">
        </div>
        <div><h4 style="color: red; font-size: 20" id="quantityResult"></h4></div><br>
        <div class="col-md-10 col-md-offset-1">
            <button  type="button" class="btn btn-primary btn-block" id="add">Add More</button><br/>
            <button id='show' type="submit" class="btn btn-success btn-block btn-md" >Sell Product</button>
        </div>

    </form>
</div>


<!--JavaScript/jQuery code for add more button -->                 
<script>
    var count = 1;
    $(document).ready(function () {
        $("#add").click(function () {
            count = count + 1;
            $("#inputDiv").append('<input name="pName' + count + '" type="text" class="form-control productName" placeholder="Enter product name"  required> ' +
                    '<input name="pQuantity' + count + '" type="number" class="form-control quantityCheck" step="any" placeholder="Enter Quantity" onchange="onChangeFunction()" required> ' + '<br/><br/>');

            $("#count").attr("value", count);
        });
    });
</script>








<script>
    
    $(document).ready(function){
        $("#inputDiv").change(function){
            alert("visit");
        }
    }
</script>



<!-- Check Product quantity availability 
<script>
    function onChangeFunction() {
        $('.quantityCheck').focusout(function () {
            var quantityCheck = $(this).val();
            var productName = $('.productName').val();
           // alert(productName);

            $.ajax({
                type: 'POST',
                data: {quantityCheck: quantityCheck, productName: productName},
                url: 'QuantityCheckServlet',
                success: function (result) {
                    $('#quantityResult').html(result);
                }
            });
        });
    }
</script>     
-->

<%@ include file="footer.jsp" %>




