.class public abstract Lcom/viber/voip/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Lcom/viber/voip/ui/ab;

.field protected c:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/viber/voip/ui/aa;->b:Lcom/viber/voip/ui/ab;

    .line 18
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/viber/voip/ui/aa;->c:Landroid/view/inputmethod/InputMethodManager;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()Landroid/view/View;
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public g()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/ui/aa;->c()Landroid/view/View;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/viber/voip/ui/aa;->c:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
