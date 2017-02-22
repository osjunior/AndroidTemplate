<menu xmlns:android="http://schemas.android.com/apk/res/android"<#if appCompat>
    xmlns:app="http://schemas.android.com/apk/res-auto"</#if>
    xmlns:tools="http://schemas.android.com/tools"
    tools:context="${relativePackage}.${activityClass}" >
    <item android:id="@+id/${classToResource(activityClass)}_action_search"
          android:title="${classToResource(activityClass)}_search_text"
          android:icon="@android:drawable/ic_search_category_default"
          android:orderInCategory="1"
          app:showAsAction="ifRoom|collapseActionView"
          app:actionViewClass="android.support.v7.widget.SearchView"/>
</menu>
