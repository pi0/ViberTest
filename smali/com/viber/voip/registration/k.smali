.class Lcom/viber/voip/registration/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/z;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/j;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/viber/voip/registration/k;->a:Lcom/viber/voip/registration/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/l;-><init>(Lcom/viber/voip/registration/k;)V

    invoke-virtual {v0, v2, v1, v2}, Lcom/viber/voip/stickers/r;->a(ZLjava/lang/Runnable;Z)V

    .line 424
    return-void
.end method
