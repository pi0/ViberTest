.class public Lcom/viber/voip/messages/ui/media/DoodleActivityPortrait;
.super Lcom/viber/voip/messages/ui/media/DoodleActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x3

    const-string/jumbo v1, "DoodleActivityPortrait"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string/jumbo v0, "onCreate: Portrait mode only"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivityPortrait;->a(Ljava/lang/String;)V

    .line 21
    return-void
.end method
