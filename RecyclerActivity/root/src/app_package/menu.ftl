final MenuItem searchItem = menu.findItem(R.id.action_search);
final SearchView searchView = (SearchView) MenuItemCompat.getActionView(searchItem);
SearchManager searchManager = (SearchManager) getSystemService(SEARCH_SERVICE);
searchView.setSearchableInfo(searchManager.getSearchableInfo(getComponentName()));
searchView.setQueryHint(getString(R.${classToResource(activityClass)}_search_text));
searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
    @Override
    public boolean onQueryTextSubmit(String query) {
        return false;
    }

    @Override
    public boolean onQueryTextChange(String newText) {
        if (!TextUtils.isEmpty(newText)) {
             fragment.getAdapter().doFilter(newText);
        }else{
            fragment.getAdapter().showAllData();
        }
                return false;
        }
    });