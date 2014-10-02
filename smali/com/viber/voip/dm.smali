.class Lcom/viber/voip/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/pixie/PixieController$PixieReadyListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;


# direct methods
.method constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/viber/voip/dm;->a:Lcom/viber/voip/ViberApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/viber/voip/dm;->a:Lcom/viber/voip/ViberApplication;

    #getter for: Lcom/viber/voip/ViberApplication;->configManager:Lcom/viber/voip/registration/ao;
    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->access$000(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/registration/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ao;->a()V

    .line 427
    return-void
.end method
