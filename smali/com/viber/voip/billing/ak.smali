.class Lcom/viber/voip/billing/ak;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/viber/voip/billing/aj;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/viber/voip/billing/ak;->a:Lcom/viber/voip/billing/aj;

    .line 366
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 370
    invoke-static {}, Lcom/viber/voip/billing/a;->e()V

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/viber/voip/billing/ak;->a:Lcom/viber/voip/billing/aj;

    invoke-static {}, Lcom/viber/voip/billing/a;->f()Lcom/viber/voip/billing/an;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/aj;->a(Lcom/viber/voip/billing/an;)V

    .line 377
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 361
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/ak;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/ak;->a(Ljava/lang/Void;)V

    return-void
.end method
