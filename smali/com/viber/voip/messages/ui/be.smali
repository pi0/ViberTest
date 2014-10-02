.class Lcom/viber/voip/messages/ui/be;
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
.field final synthetic a:Lcom/viber/voip/messages/ui/bd;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/viber/voip/messages/ui/be;->a:Lcom/viber/voip/messages/ui/bd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/ui/be;->a:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/bd;->g()V

    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 325
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/be;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
