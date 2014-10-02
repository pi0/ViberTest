.class abstract Lcom/viber/voip/billing/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/billing/m;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 528
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 529
    iput-boolean p1, p0, Lcom/viber/voip/billing/l;->a:Z

    .line 530
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected varargs a([Ljava/lang/String;)Lcom/viber/voip/billing/m;
    .locals 3
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 534
    iget-boolean v1, p0, Lcom/viber/voip/billing/l;->a:Z

    invoke-virtual {p0}, Lcom/viber/voip/billing/l;->a()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/viber/voip/billing/a;->a(ZILjava/lang/String;)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 526
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/l;->a([Ljava/lang/String;)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method
