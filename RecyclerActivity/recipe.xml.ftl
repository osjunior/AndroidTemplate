<?xml version="1.0"?>
<recipe>
   <#include "../common/recipe_manifest.xml.ftl" />
   <#include "../common/recipe_simple_dimens.xml" />
   <#include "../common/recipe_simple_menu.xml.ftl" />

   <merge from="../common/root/res/values/no_actionbar_styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

  <#if buildApi gte 21>
    <merge from="../common/root/res/values-v21/no_actionbar_styles_v21.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values-v21/styles.xml" /> 
  </#if>


  <#if !(hasDependency('com.android.support:appcompat-v7'))>
          <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
  </#if>

  <#if !(hasDependency('com.android.support:cardview-v7'))>
          <dependency mavenUrl="com.android.support:cardview-v7:${buildApi}.+"/>
  </#if>

  <#if !(hasDependency('com.android.support:design'))>
        <dependency mavenUrl="com.android.support:design:${buildApi}.+"/>
  </#if>


  <#if !(hasDependency('com.github.bumptech.glide:glide'))>
        <dependency mavenUrl="com.github.bumptech.glide:glide:3.7.0"/>
  </#if>


   <merge from="root/res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />      
 <#if searchView == "yes"> 
  <merge from="root/res/menu/main.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/menu/menu_${classToResource(activityClass)}.xml" />       
  </#if>        

  <merge from="root/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />  

  <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

  <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />


  <instantiate from="root/src/app_package/SimpleInterface.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}View.java" />


   <instantiate from="root/src/app_package/SimpleAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}.java" />   
                   
   <instantiate from="root/src/app_package/SimpleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${modelName}.java" />

  <instantiate from="root/src/app_package/SimpleActivityFragment.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />


  <instantiate from="root/res/layout/activity_fragment_container.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

  <instantiate from="root/res/layout/fragment_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />


  <instantiate from="root/res/layout/layout_item.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutRowName}.xml" />                 

  <instantiate from="root/src/app_package/SimpleActivityFragment.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.java" />                


  <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />


   

</recipe>
