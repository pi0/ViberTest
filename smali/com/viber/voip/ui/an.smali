.class public abstract Lcom/viber/voip/ui/an;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/d;


# static fields
.field protected static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/ui/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ui/an;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    return-void
.end method


# virtual methods
.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/an;->setRetainInstance(Z)V

    .line 40
    return-void
.end method

.method public onFragmentVisibilityChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTabReselected()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/viber/voip/ui/an;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    return-void
.end method
