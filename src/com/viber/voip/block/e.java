package com.viber.voip.block;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.actionbarsherlock.app.SherlockListFragment;
import com.viber.provider.b;
import com.viber.voip.a.bc;
import java.util.HashSet;
import java.util.Set;

public class e
  extends SherlockListFragment
  implements View.OnClickListener, com.viber.provider.e, d
{
  private o a;
  private a b;
  private com.viber.voip.a.f c = new com.viber.voip.a.f();
  
  private void a()
  {
    FragmentActivity localFragmentActivity = getActivity();
    RelativeLayout localRelativeLayout = new RelativeLayout(localFragmentActivity);
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
    int i = (int)TypedValue.applyDimension(1, 8.0F, localFragmentActivity.getResources().getDisplayMetrics());
    localRelativeLayout.setPadding(i, i, i, i);
    EditText localEditText = new EditText(localFragmentActivity);
    localEditText.setInputType(3);
    localRelativeLayout.addView(localEditText, new RelativeLayout.LayoutParams(-1, -2));
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localFragmentActivity);
    localBuilder.setTitle(2131494461);
    localBuilder.setView(localRelativeLayout);
    localBuilder.setNegativeButton(2131493558, null);
    localBuilder.setPositiveButton(2131494452, new f(this, localEditText));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setOnShowListener(new g(this, localAlertDialog, localEditText));
    localAlertDialog.show();
  }
  
  private void b()
  {
    new AlertDialog.Builder(getActivity()).setCancelable(true).setTitle(2131493775).setMessage(2131494137).setPositiveButton(2131493683, null).create().show();
  }
  
  public void a(b paramb) {}
  
  public void a(b paramb, boolean paramBoolean)
  {
    this.b.notifyDataSetChanged();
  }
  
  public void a(q paramq)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(paramq.a());
    i.a(getActivity(), paramq.b(), localHashSet);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = new o(getActivity(), getLoaderManager(), this);
    this.a.e();
    this.a.n();
    this.b = new a(getActivity(), this.a, this);
    setListAdapter(this.b);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    a();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    bc.a().a(this.c.a());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903195, null);
    localView.findViewById(2131165788).setOnClickListener(this);
    return localView;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    this.a.m();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.block.e
 * JD-Core Version:    0.7.0.1
 */