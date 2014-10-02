.class Lit/sephiroth/android/library/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/u;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/u;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/u;Lit/sephiroth/android/library/widget/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ab;-><init>(Lit/sephiroth/android/library/widget/u;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/u;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/u;->aj:Z

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/u;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/u;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/u;->post(Ljava/lang/Runnable;)Z

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/u;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/u;->b(Lit/sephiroth/android/library/widget/u;)V

    .line 891
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ab;->a:Lit/sephiroth/android/library/widget/u;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/u;->c(Lit/sephiroth/android/library/widget/u;)V

    goto :goto_0
.end method
