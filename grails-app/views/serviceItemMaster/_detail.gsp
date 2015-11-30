<%@ page import="com.org.item.ItemInfo;" %>

<tr id="detail${i}" name="tr[${i}]" class="detail-div" <g:if test="${hidden}">style="display:none;"</g:if>>
    <g:hiddenField name='serviceItemDetails[${i}].id' value='${serviceItemDetails?.id}'/>
        <g:hiddenField name='serviceItemDetails[${i}].deleted' value='false'/>
        <g:hiddenField name='serviceItemDetails[${i}].new' value="${serviceItemDetails?.id == null?'true':'false'}"/>
    <td>

          <div style="width: 160px;color: red;float:left">
              <g:select name='serviceItemDetails[${i}].item' from="${ItemInfo.findAllByItemStatus(Boolean.TRUE)}" optionKey="id" optionValue="itemNo" value='${serviceItemDetails?.item?.id}' class='detail-number form-control'/>

          </div>
        <div style="float:left;">
            <a style="height:32px;width: 43px" title="Add Item"  class="fa fa-plus-circle btn btn-block btn-small btn-success " href="${g.createLink(controller: 'itemInfo',action: 'create')}" ></a>

        </div>
    </td>

    <td><g:textField size="13px" name='serviceItemDetails[${i}].serialNo' value='${serviceItemDetails?.serialNo}' class='detail-txt form-control'/></td>

    <td><g:field type="text" size="13px" name='serviceItemDetails[${i}].searchKey' value='${serviceItemDetails?.searchKey}'  class='detail-txt form-control'/></td>
<td><g:field type="text" size="13px" name='serviceItemDetails[${i}].remarks' value='${serviceItemDetails?.remarks}' class='detail-txt form-control' /></td>

    %{--<td><span class='delButton' id='delButton${i}' name='results[${i}].delButton'><img src="${resource(dir: 'images/skin', file: 'database_delete.png')}"/></span></td>--}%
    <td><a id='addServiceDtls' data-toggle="modal" href="#myModal" name='addServiceDtls' class="glyphicon glyphicon-save btn btn-block btn-small delButton" href="#"  ></a></td>
    <td><a id='delButton${i}' name='results[${i}].delButton' class="glyphicon glyphicon-trash btn btn-block btn-small btn-danger delButton" href="#"  ></a></td>

</tr>

