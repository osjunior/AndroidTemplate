<resources>
    <#if !isNewProject>
    <string name="title_${simpleName}">${escapeXmlString(activityTitle)}</string>
    </#if>

    <!-- Strings related to recycler view -->
    <string name="${classToResource(activityClass)}_title_text">Title</string>
    <string name= "${classToResource(activityClass)}_description_text">Description</string>
   <#if searchView == "yes"> 
     <string name= "${classToResource(activityClass)}_search_text">Buscar</string>
   </#if>  
</resources>
