.class Lcom/viber/voip/rakuten/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/rakuten/RakutenRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/rakuten/s;->a:Lcom/viber/voip/rakuten/RakutenRegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/s;->a:Lcom/viber/voip/rakuten/RakutenRegistrationActivity;

    invoke-static {v1}, Lcom/viber/voip/rakuten/RakutenRegistrationActivity;->a(Lcom/viber/voip/rakuten/RakutenRegistrationActivity;)Lcom/viber/voip/rakuten/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/l;->b(Lcom/viber/voip/rakuten/q;)V

    .line 45
    return-void
.end method
