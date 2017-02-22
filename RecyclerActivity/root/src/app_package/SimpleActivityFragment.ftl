package ${packageName};

import android.<#if appCompat>support.v4.</#if>app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.LinearLayoutManager;
import java.util.ArrayList;
import android.widget.ProgressBar;

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

/**
 * A placeholder fragment containing a simple view.
 */
public class ${fragmentClass} extends Fragment implements ${activityClass}View  {

    private RecyclerView mRecyclerView;
    private ${adapterName} m${adapterName};
    private ArrayList<${modelName}> m${modelName}List;
    private ProgressBar mProgressBar;

    public ${fragmentClass}() {
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
        mRecyclerView = (RecyclerView) view.findViewById(R.id.recycler_${classToResource(modelName)});
        mProgressBar = (ProgressBar) view.findViewById(R.id.progressBar);
        m${modelName}List = new ArrayList<>();
        m${adapterName} = new ${adapterName}(m${modelName}List);
        mRecyclerView.setAdapter(m${adapterName});
        mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        getData();
        return view;
        
    }


    public ${adapterName} getAdapter(){
        return m${adapterName};
    }

    @Override
    public void loadData(ArrayList<${modelName}> dataSet) {
        m${modelName}List = dataSet;
        m${adapterName}.setDataSet(dataSet);
        m${adapterName}.notifyDataSetChanged();
    }

    @Override
    public void hideLoading() {
        mProgressBar.setVisibility(View.GONE);
    }

    @Override
    public void showLoading() {
        mProgressBar.setVisibility(View.VISIBLE);
    }


    public void getData(){
         ArrayList<${modelName}> productList = new ArrayList<>();

         ${modelName} ${modelName}Model = new ${modelName}();
         ${modelName}Model.setTitle("Herbert");
         ${modelName}Model.setDescription("is simply dummy text of the printing and typesetting industry");
         ${modelName}Model.setImageUrl("http://publicdomainarchive.com/wp-content/uploads/2017/01/public-domain-images-free-stock-photos008-1000x625.jpg");
         productList.add(${modelName}Model);

         ${modelName}Model = new ${modelName}();
         ${modelName}Model.setTitle("Robert");
         ${modelName}Model.setDescription("is simply dummy text of the printing and typesetting industry");
         ${modelName}Model.setImageUrl("http://publicdomainarchive.com/wp-content/uploads/2017/01/public-domain-images-free-stock-photos004-1000x667.jpg");
         productList.add(${modelName}Model);

         ${modelName}Model = new ${modelName}();
         ${modelName}Model.setTitle("Arthur");
         ${modelName}Model.setDescription("is simply dummy text of the printing and typesetting industry");
         ${modelName}Model.setImageUrl("https://3hsyn13u3q9dhgyrg2qh3tin-wpengine.netdna-ssl.com/wp-content/uploads/2017/02/SplitShire-08470.jpg");
         productList.add(${modelName}Model);

         ${modelName}Model = new ${modelName}();
         ${modelName}Model.setTitle("Wendy");
         ${modelName}Model.setDescription("is simply dummy text of the printing and typesetting industry");
         ${modelName}Model.setImageUrl("https://3hsyn13u3q9dhgyrg2qh3tin-wpengine.netdna-ssl.com/wp-content/uploads/2017/02/SplitShire-08505.jpg");
         productList.add(${modelName}Model);

         ${modelName}Model = new ${modelName}();
         ${modelName}Model.setTitle("Anthony");
         ${modelName}Model.setDescription("is simply dummy text of the printing and typesetting industry");
         ${modelName}Model.setImageUrl("https://3hsyn13u3q9dhgyrg2qh3tin-wpengine.netdna-ssl.com/wp-content/uploads/2017/01/SplitShire-8418.jpg");
         productList.add(${modelName}Model);
         loadData(productList);
         hideLoading();
        
    }
}
