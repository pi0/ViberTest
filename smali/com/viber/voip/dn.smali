.class Lcom/viber/voip/dn;
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
.field final synthetic a:Lcom/viber/voip/ViberApplication;


# direct methods
.method constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/viber/voip/dn;->a:Lcom/viber/voip/ViberApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 446
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/dn;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
