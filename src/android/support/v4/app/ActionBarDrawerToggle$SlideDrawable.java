

android.app.Activity
android.graphics.Canvas
android.graphics.Rect
android.graphics.drawable.Drawable
android.graphics.drawable.Drawable.Callback
android.graphics.drawable.InsetDrawable
android.os.Build.VERSION
android.support.v4.view.ViewCompat
android.view.Window

ActionBarDrawerToggle$SlideDrawable
  
  

  mHasMirroring
  mOffset
  mPosition
  mTmpRect
  
  ActionBarDrawerToggle$SlideDrawable, 
  
    , 0
     = SDK_INT
     = 
     (>18 {
       = 
    
    mHasMirroring = bool;
    this.mTmpRect = new Rect();
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i = 1;
    copyBounds(this.mTmpRect);
    paramCanvas.save();
    if (ViewCompat.getLayoutDirection(ActionBarDrawerToggle.access$300(this.this$0).getWindow().getDecorView()) == i) {}
    for (int j = i;; j = 0)
    {
      if (j != 0) {
        i = -1;
      }
      int k = this.mTmpRect.width();
      paramCanvas.translate(-this.mOffset * k * this.mPosition * i, 0.0F);
      if ((j != 0) && (!this.mHasMirroring))
      {
        paramCanvas.translate(k, 0.0F);
        paramCanvas.scale(-1.0F, 1.0F);
      }
      super.draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  public float getPosition()
  {
    return this.mPosition;
  }
  
  public void setOffset(float paramFloat)
  {
    this.mOffset = paramFloat;
    invalidateSelf();
  }
  
  public void setPosition(float paramFloat)
  {
    this.mPosition = paramFloat;
    invalidateSelf();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     android.support.v4.app.ActionBarDrawerToggle.SlideDrawable
 * JD-Core Version:    0.7.0.1
 */