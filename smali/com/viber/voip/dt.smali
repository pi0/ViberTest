.class Lcom/viber/voip/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication$KillReceiver;


# direct methods
.method constructor <init>(Lcom/viber/voip/ViberApplication$KillReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/viber/voip/dt;->a:Lcom/viber/voip/ViberApplication$KillReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1563
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v1, "Viber exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->finish()V

    .line 1565
    return-void
.end method
