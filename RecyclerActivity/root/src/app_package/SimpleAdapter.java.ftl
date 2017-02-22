package ${packageName};
import java.util.ArrayList;
import android.view.View;
import android.view.ViewGroup;
import android.view.LayoutInflater;
import android.support.v7.widget.RecyclerView;
import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import android.widget.TextView;

public class ${adapterName} extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private ArrayList<${modelName}> mDataSet;
    <#if searchView == "yes"> 
    private ArrayList<${modelName}> mAllDataSet = new ArrayList<>();
   </#if>  

    public ${adapterName}(ArrayList<${modelName}> data) {
        mDataSet = data;
    }

    public ArrayList<${modelName}> getDataSet() {
        return mDataSet;
    }

    public void setDataSet(ArrayList<${modelName}> dataSet) {
      <#if searchView == "yes"> 
         mDataSet.clear();
         mDataSet.addAll(dataSet);
         mAllDataSet.addAll(dataSet);
      <#else> 
          mDataSet = dataSet;
       </#if>   
    }

    @Override
    public int getItemCount() {
        return  mDataSet.size();
    }

  <#if searchView == "yes"> 
     public void doFilter(String newText) {
        ArrayList<${modelName}> filterList = new ArrayList<>();
        for(${modelName} ${modelName}Model : mAllDataSet){
            if(${modelName}Model != null && ${modelName}Model.getTitle().toLowerCase().contains(newText.toLowerCase())){
                filterList.add(${modelName}Model);
            }
        }
        mDataSet.clear();
        mDataSet.addAll(filterList);
        notifyDataSetChanged();
    }

    public void showAllData() {
        mDataSet.clear();
        mDataSet.addAll(mAllDataSet);
        notifyDataSetChanged();
    }
    </#if>  

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(final ViewGroup viewGroup, int viewType) {
        View view = LayoutInflater.from(viewGroup.getContext())
                    .inflate(R.layout.${layoutRowName},viewGroup, false);
            return new ${modelName}ViewHolder(view,viewGroup.getContext());

    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
        ${modelName} ${modelName}Model =  mDataSet.get(position);
        ${modelName}ViewHolder holder = (${modelName}ViewHolder) viewHolder;
        holder.setImage(${modelName}Model.getImageUrl());
        holder.setTitle(${modelName}Model.getTitle());
        holder.setDescription(${modelName}Model.getDescription());
   }


    public class ${modelName}ViewHolder extends RecyclerView.ViewHolder {
        public Context context;
        public ImageView imageItemUrl;
        public TextView text${modelName}Description;
        public TextView text${modelName}Title;

        public ${modelName}ViewHolder(View view, Context context) {
            super(view);
            this.imageItemUrl = (ImageView) view.findViewById(R.id.image_url);
            this.text${modelName}Title = (TextView) view.findViewById(R.id.text_${classToResource(modelName)}_title);
            this.text${modelName}Description = (TextView) view.findViewById(R.id.text_${classToResource(modelName)}_description);
           
            this.context = context;
        }

        public void setDescription(String description) {
           this.text${modelName}Description.setText(description);
        }

        public void setTitle(String title) {
            this.text${modelName}Title.setText(title);
        }

         public void setImage(String url){
           Glide.with(this.context)
                    .load(url)
                    .centerCrop()
                    .crossFade()
                    .into(imageItemUrl);
        }

    }

}