.class final Lcom/viber/voip/api/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/z;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/api/x;

.field final synthetic c:Lcom/viber/voip/api/y;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/viber/voip/api/x;Lcom/viber/voip/api/y;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/viber/voip/api/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/viber/voip/api/h;->b:Lcom/viber/voip/api/x;

    iput-object p3, p0, Lcom/viber/voip/api/h;->c:Lcom/viber/voip/api/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 668
    iget-object v0, p0, Lcom/viber/voip/api/h;->c:Lcom/viber/voip/api/y;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 669
    return-void
.end method

.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 3
    .parameter

    .prologue
    .line 658
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/api/h;->a:Ljava/lang/String;

    new-instance v2, Lcom/viber/voip/api/i;

    invoke-direct {v2, p0}, Lcom/viber/voip/api/i;-><init>(Lcom/viber/voip/api/h;)V

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 664
    return-void
.end method
