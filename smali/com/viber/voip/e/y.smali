.class Lcom/viber/voip/e/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/e/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/e/u;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/viber/voip/e/y;->a:Lcom/viber/voip/e/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 726
    const-string/jumbo v0, "prepareNotifications: restoring notifications"

    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/viber/voip/e/y;->a:Lcom/viber/voip/e/u;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/e/u;->b(Lcom/viber/voip/e/u;JZ)V

    .line 728
    iget-object v0, p0, Lcom/viber/voip/e/y;->a:Lcom/viber/voip/e/u;

    invoke-static {v0}, Lcom/viber/voip/e/u;->d(Lcom/viber/voip/e/u;)V

    .line 730
    return-void
.end method
