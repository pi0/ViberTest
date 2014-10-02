.class Lcom/viber/voip/billing/ch;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/co;

.field final synthetic b:Lcom/viber/voip/billing/bu;

.field final synthetic c:Lcom/viber/voip/billing/cf;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/cf;Lcom/viber/voip/billing/co;Lcom/viber/voip/billing/bu;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/viber/voip/billing/ch;->c:Lcom/viber/voip/billing/cf;

    iput-object p2, p0, Lcom/viber/voip/billing/ch;->a:Lcom/viber/voip/billing/co;

    iput-object p3, p0, Lcom/viber/voip/billing/ch;->b:Lcom/viber/voip/billing/bu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/viber/voip/billing/ch;->a:Lcom/viber/voip/billing/co;

    iget-object v1, p0, Lcom/viber/voip/billing/ch;->b:Lcom/viber/voip/billing/bu;

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/co;->d(Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/ds;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPurchase: result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Lcom/viber/voip/billing/ds;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/viber/voip/billing/ch;->a:Lcom/viber/voip/billing/co;

    iget-object v1, p0, Lcom/viber/voip/billing/ch;->b:Lcom/viber/voip/billing/bu;

    invoke-static {}, Lcom/viber/voip/billing/ds;->values()[Lcom/viber/voip/billing/ds;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/ds;)V

    .line 410
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 399
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/ch;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/ch;->a(Ljava/lang/Integer;)V

    return-void
.end method
