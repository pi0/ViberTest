.class public Lcom/viber/voip/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ViberFactory;


# instance fields
.field private a:Lcom/viber/voip/ViberLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/viber/voip/dz;

    invoke-direct {v0, p0}, Lcom/viber/voip/dz;-><init>(Lcom/viber/voip/dy;)V

    iput-object v0, p0, Lcom/viber/voip/dy;->a:Lcom/viber/voip/ViberLogger;

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/viber/voip/ViberLogger;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/dy;->a:Lcom/viber/voip/ViberLogger;

    return-object v0
.end method

.method public getPixieController()Lcom/viber/voip/pixie/PixieController;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->_getInstance()Lcom/viber/voip/pixie/PixieController;

    move-result-object v0

    return-object v0
.end method
