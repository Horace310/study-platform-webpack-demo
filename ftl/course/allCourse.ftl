<#assign pageName="allCourse">
<#include "../head.ftl">
<@head title="所有课程"></@head>
<!-- @STYLE -->
<link type="text/css" rel="stylesheet" href="/src/css/page/style.css"/> 
<body>
    <div class="g-wrap m-allCourse">
        <#list courseList as one>
            <a href="${courseIntroPrefix?replace('{id}',one.id)}" target="_blank">${one.name?html}</a><br/>
            ${one.description?html}<br/>
            <br/>
        </#list>   
    </div>
</body>
</html>
