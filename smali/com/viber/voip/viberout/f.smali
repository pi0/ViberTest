.class final Lcom/viber/voip/viberout/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/dw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/ViberApplication;)V
    .locals 3
    .parameter

    .prologue
    .line 139
    const-string/jumbo v0, "onAppReady"

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->d(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "VIBER_OUT_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 142
    or-int/lit8 v0, v0, 0x0

    .line 143
    invoke-static {}, Lcom/viber/voip/viberout/e;->g()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/viberout/e;->a(Z)V

    .line 144
    invoke-static {}, Lcom/viber/voip/viberout/e;->g()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/e;)V

    .line 145
    return-void
.end method
