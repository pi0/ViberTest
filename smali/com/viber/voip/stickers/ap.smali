.class Lcom/viber/voip/stickers/ap;
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
.field final synthetic a:Lcom/viber/voip/stickers/ao;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/stickers/ap;->a:Lcom/viber/voip/stickers/ao;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/stickers/ap;->a:Lcom/viber/voip/stickers/ao;

    invoke-static {v0}, Lcom/viber/voip/stickers/ao;->a(Lcom/viber/voip/stickers/ao;)V

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/stickers/ap;->a:Lcom/viber/voip/stickers/ao;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/ao;->a(Lcom/viber/voip/stickers/ao;Lcom/viber/voip/util/bi;)Lcom/viber/voip/util/bi;

    .line 55
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/ap;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/ap;->a(Ljava/lang/Void;)V

    return-void
.end method
