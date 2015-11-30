
<script type="text/javascript">
    function setTotalAmount(id){
        var rateField = id.replace(".AMOUNT", ".RATE"),
            totalAmountField = id.replace(".AMOUNT", ".TOTAL_PRICE"),
            rate = document.getElementById(rateField).value,
            amount = document.getElementById(id).value,
            totalAmount = rate * amount;
            document.getElementById(totalAmountField).value = totalAmount;
    }

    var childCount = ${serviceItemMasterInstance?.serviceItemDetails?.size()} + 0;
    $('.delButton').on('click', function() {
        alert(prnt);
//find the parent div
        var prnt = $(this).parents(".detail-div");

//find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value', 'true');
//hide the div
        prnt.hide();
    });
    function addChild() {
//debugger;
        var clone = $("#detail_clone").clone();
        var htmlId = 'serviceItemDetails[' + childCount + '].';

        clone.find("input[id$=id]").attr('id', htmlId + 'id').attr('name', htmlId + 'id');
        clone.find("input[id$=deleted]").attr('id', htmlId + 'deleted').attr('name', htmlId + 'deleted');
        clone.find("input[id$=new]").attr('id', htmlId + 'new').attr('name', htmlId + 'new').attr('value', 'true');


        clone.find("select[id$=item]").attr('id', htmlId + 'item').attr('name', htmlId + 'item');
        clone.find("input[id$=serialNo]").attr('id', htmlId + 'serialNo').attr('name', htmlId + 'serialNo');

        clone.find("input[id$=searchKey]").attr('id', htmlId + 'searchKey').attr('name', htmlId + 'searchKey');
        clone.find("input[id$=remarks]").attr('id', htmlId + 'remarks').attr('name', htmlId + 'remarks');

        clone.attr('id', 'detail' + childCount);

        $("#detailList").append(clone);
        clone.show();
        childCount++;
    }
</script>
<input type="button"   style="border: 2px solid;float: right" class=" btn btn-info btn-md save" value="Add Detail" onclick="addChild();"/>

    <table  style=" border-radius:5px;table-layout: fixed" id="detailList" class="dataListTable table table-bordered table-striped table-hover table-condensed">
        %{--<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">--}%
        <tr ><th style="text-align: center"  width="60px">Item No.</th>
        <th width="70px">Serial Key</th>
        <th width="30px">Search Key</th>
        <th width="60px">Remarks </th>
        <th width="26px">Add Service</th>
        <th width="23px">	Remove</th></tr>
        <g:render template='detail' model="['result':null,'i':'_clone','hidden':true]"/>
        <g:each var="serviceItemDetails" in="${serviceItemMasterInstance.serviceItemDetails}" status="i" >
            <g:render template='detail' model="['serviceItemDetails':serviceItemDetails,'i':i]"/>
        </g:each>
    </table>
%{--</div>--}%


%{--



<script>
    $('body').on('focus', ".datepicker", function () {
        $(this).datepicker({
            format: 'dd/mm/yyyy',
            autoclose: true
        });
    });
</script>--}%
