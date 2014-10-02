.class Lcom/viber/voip/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/HomeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/viber/voip/aj;->a:Lcom/viber/voip/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/viber/voip/aj;->a:Lcom/viber/voip/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/HomeActivity;->a(Lcom/viber/voip/HomeActivity;Z)Z

    .line 1024
    iget-object v0, p0, Lcom/viber/voip/aj;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->i(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/util/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->e()V

    .line 1025
    return-void
.end method
