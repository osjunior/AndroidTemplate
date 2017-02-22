<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_margin="@dimen/activity_horizontal_margin"
    android:orientation="vertical"
    android:layout_height="wrap_content">

    <ImageView
        android:id="@+id/image_url"
        android:background="@android:color/darker_gray"
        android:scaleType="fitCenter"
        android:layout_width="match_parent"
        android:layout_height="200dp"/>

    <TextView
        android:id="@+id/text_${classToResource(activityClass)}_title"
        style="@style/TextAppearance.AppCompat.Display1"
        android:text="@string/${classToResource(activityClass)}_title_text"
        android:layout_margin="@dimen/item_row_margin"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"/>


    <TextView
        android:id="@+id/text_${classToResource(activityClass)}_description"
        style="@style/TextAppearance.AppCompat.Medium"
        android:text="@string/${classToResource(activityClass)}_description_text"
        android:layout_margin="@dimen/item_row_margin"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"/>

</LinearLayout>