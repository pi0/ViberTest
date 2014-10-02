.class Lcom/viber/voip/widget/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/viber/voip/widget/a/c;->a:Lcom/viber/voip/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/widget/a/c;->a:Lcom/viber/voip/widget/a/a;

    invoke-static {v0}, Lcom/viber/voip/widget/a/a;->a(Lcom/viber/voip/widget/a/a;)Lcom/viber/voip/widget/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/viber/voip/widget/a/c;->a:Lcom/viber/voip/widget/a/a;

    invoke-static {v0}, Lcom/viber/voip/widget/a/a;->a(Lcom/viber/voip/widget/a/a;)Lcom/viber/voip/widget/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/a/c;->a:Lcom/viber/voip/widget/a/a;

    invoke-static {v1}, Lcom/viber/voip/widget/a/a;->b(Lcom/viber/voip/widget/a/a;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/widget/a/d;->a(Landroid/os/Parcelable;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/a/c;->a:Lcom/viber/voip/widget/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/widget/a/a;->a(Lcom/viber/voip/widget/a/a;Z)V

    .line 59
    return-void
.end method
