.class Lcom/viber/voip/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/k/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/k/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/k/a;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/viber/voip/k/f;->a:Lcom/viber/voip/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zoobe/sdk/helper/ZoobeHelper;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-interface {p1}, Lcom/zoobe/sdk/helper/ZoobeHelper;->getReleaseAudioIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    :cond_0
    return-void
.end method
