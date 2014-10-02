.class Lcom/viber/voip/settings/ui/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bk;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bl;->a:Lcom/viber/voip/settings/ui/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bl;->a:Lcom/viber/voip/settings/ui/bk;

    iget-object v0, v0, Lcom/viber/voip/settings/ui/bk;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bj;->a(Lcom/viber/voip/settings/ui/bj;)V

    .line 62
    return-void
.end method
