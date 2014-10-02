.class Lcom/viber/voip/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/k/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/k/h;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lcom/viber/voip/k/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/k/a;Lcom/viber/voip/k/h;IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/k/e;->e:Lcom/viber/voip/k/a;

    iput-object p2, p0, Lcom/viber/voip/k/e;->a:Lcom/viber/voip/k/h;

    iput p3, p0, Lcom/viber/voip/k/e;->b:I

    iput p4, p0, Lcom/viber/voip/k/e;->c:I

    iput-object p5, p0, Lcom/viber/voip/k/e;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zoobe/sdk/helper/ZoobeHelper;)V
    .locals 5
    .parameter

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/viber/voip/k/e;->a:Lcom/viber/voip/k/h;

    iget-object v1, p0, Lcom/viber/voip/k/e;->e:Lcom/viber/voip/k/a;

    iget v2, p0, Lcom/viber/voip/k/e;->b:I

    iget v3, p0, Lcom/viber/voip/k/e;->c:I

    iget-object v4, p0, Lcom/viber/voip/k/e;->d:Landroid/content/Intent;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/a;IILandroid/content/Intent;Lcom/zoobe/sdk/helper/ZoobeHelper;)Lcom/zoobe/sdk/helper/ZoobeResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/k/h;->a(Lcom/zoobe/sdk/helper/ZoobeResult;)V

    .line 220
    :cond_0
    return-void
.end method
