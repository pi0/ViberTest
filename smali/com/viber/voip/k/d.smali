.class Lcom/viber/voip/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/k/i;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/viber/voip/k/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/k/a;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/viber/voip/k/d;->b:Lcom/viber/voip/k/a;

    iput-object p2, p0, Lcom/viber/voip/k/d;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zoobe/sdk/helper/ZoobeHelper;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/viber/voip/k/d;->a:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/viber/voip/k/d;->b:Lcom/viber/voip/k/a;

    invoke-static {v1, p1}, Lcom/viber/voip/k/a;->b(Lcom/viber/voip/k/a;Lcom/zoobe/sdk/helper/ZoobeHelper;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    :cond_0
    return-void
.end method
