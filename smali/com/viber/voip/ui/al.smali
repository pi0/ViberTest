.class public Lcom/viber/voip/ui/al;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/d;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/viber/voip/ui/al;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ui/al;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/ui/al;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    const-string/jumbo v0, "onAttach called"

    invoke-static {v0}, Lcom/viber/voip/ui/al;->log(Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/ui/al;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public onFragmentVisibilityChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTabReselected()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/viber/voip/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string/jumbo v0, "fragment was not attached ignoring ui update (!!!!!)"

    invoke-static {v0}, Lcom/viber/voip/ui/al;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
