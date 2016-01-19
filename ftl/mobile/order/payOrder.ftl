<#assign pageName="payOrder">
<#setting datetime_format="yyyy-MM-dd"/>
<#include "../common/head.ftl">
<@head title="云课堂 - 收银台"></@head>
<!-- @STYLE -->
<link type="text/css" rel="stylesheet" href="/src/css/mpage/style.css"/>
<link type="text/css" rel="stylesheet" href="/src/css/mpage/order/payOrder.css"/>
<body >
<!-- 顶部导航栏 -->
<div class="g-content">
    
    <div class="g-main">
        <div class="p-payOrder">
            <div class="title f-fc6">
                请在1小时内完成支付，超出1小时再支付可能导致购买失败，需重新下单购买
            </div>

            <div class="payArea">
                <div id="j-main" class="f-cb"></div>
                <form action="/pay/orderRedirectPage.htm" name="payForm" id="payForm">
                    <input type="hidden" name="orderUrl" id="toPayUrl"/>
                </form>
                <div class="moneytxt f-fc3">实付金额：<span class="money f-fcorange">&yen; <#if totalPrice??>${totalPrice?default("0.00")?string("##0.00#")}</#if></span></div>
                <#if totalPrice??>
                    <#if totalPrice == 0>
                        <a class="goPay" id="payBtn" >确定</a>
                    <#else>
                        <a class="goPay" id="payBtn">立即支付</a>
                    </#if>
                </#if>
                <div class="actuallyPay f-cb">
                    <input type="checkbox" checked class="j-agree" id="agreePay" />
                    <label for="j-agree" class="f-fc6">我已经阅读并同意</label>
                    <a id="j-treatyLink" class="f-fcgreen">《云课堂用户付费协议》</a>
                    <p class="treatyFb f-dn j-treatyFb">请先阅读并勾选《云课堂用户付费协议》</p>
                </div>
            </div>            
        </div>
    </div>
    
</div>

<!-- @NOPARSE -->
<script>
    <#if bankCode?exists>window.bankCode = "${bankCode?html}";</#if>
    <#if orderId?exists>window.payOrderId = "${orderId?html}";</#if>
    <#if totalPrice?exists>window.totalPrice = "${totalPrice?html}";</#if>
    <#if clientType?exists>window.clientType = "${clientType?html}";</#if>
    <#if environmentType?exists>window.environmentType = "${environmentType?html}";</#if>
    <#if relatedWeChart?exists>window.relatedWeChart = "${relatedWeChart?string("true","false")}";</#if>

</script>
<!-- /@NOPARSE -->

<!-- @DEFINE -->
<script src="/src/javascript/vendor/nej/src/define.js?pro=/src/javascript/web/&core=/src/javascript/core/"></script>
<script src="/src/javascript/web/mobile/pages/order/payOrder.js"></script>
</body>
</html>
